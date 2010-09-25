require 'rubygems'
require 'active_support'
require 'active_support/core_ext/module'

$: << Dir.getwd

begin
  require 'uv_proxmox/virtual_machine'
  require 'uv_proxmox/connection'
rescue => e
  raise e
end

module Uv
  module Proxmox
    
    mattr_accessor :commands
    @@commands = []
    
    mattr_accessor :connection
    @@connection = nil
    
    # assign a connection first
    def self.run
      self.commands.each do |cmd|
        puts self.connection.execute(cmd)
      end
    end
    
  end
end