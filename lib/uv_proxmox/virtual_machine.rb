require 'blockenspiel'

module Uv
  module Proxmox
    
    class VirtualMachine
      include Blockenspiel::DSL
      
      # the operating system template to use
      dsl_attr_accessor :template
      
      # memory in mega bytes to assign to the VM
      dsl_attr_accessor :memory
      
      # swap in mega bytes to assign to the VM
      dsl_attr_accessor :swap
      
      # disk space in giga bytes to assign to the VM
      dsl_attr_accessor :disk
      
      # the number of cpu's to assign to the VM
      dsl_attr_accessor :cpus
      
      # CPU units to assign between 8 - 500000
      dsl_attr_accessor :cpu_units
      
      # Shall the VM start on the system boot
      dsl_attr_accessor :boot
      
      # id of the node
      dsl_attr_accessor :id
      
      attr_accessor :operation
      
      def self.create(&block)
        @vm = Uv::Proxmox::VirtualMachine.new
        Blockenspiel.invoke(block, @vm)
        
        @vm.operation = 'create'
        Uv::Proxmox.commands << @vm.to_command
      end
      
      def self.update(&block)
        @vm = Uv::Proxmox::VirtualMachine.new
        Blockenspiel.invoke(block, @vm)
        
        @vm.operation = 'update'
        Uv::Proxmox.commands << @vm.to_command
      end
      
      def to_command
        raise ArgumentError, 'missing vmid' if id.blank?
        raise ArgumentError, 'missing template' if template.blank? and self.operation == 'create'
        
        commands      = []
        commands      << "--ostemplate #{template}" unless template.blank?
        commands      << "--mem #{memory}"          unless memory.blank?
        commands      << "--swap #{swap}"           unless swap.blank?
        commands      << "--disk #{disk}"           unless disk.blank?
        commands      << "--cpus #{cpus}"           unless cpus.blank?
        commands      << "--cpuunits #{cpu_units}"  unless cpu_units.blank?
        commands      << "--onboot #{boot}"         unless boot.blank?

        task     = 'vzcreate' if self.operation == 'create'
        task     = 'vzset'    if self.operation == 'update'

        "pvectl #{task} #{id} #{commands.join(" ")}"
      end
      
    end
    
  end
end