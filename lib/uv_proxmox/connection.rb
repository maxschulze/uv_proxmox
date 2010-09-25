require 'rubygems'
require 'net/ssh'

module Uv
  module Proxmox
    
    class Connection
      attr_accessor :ip_address
      attr_accessor :user
      attr_accessor :password
      attr_accessor :port
      @port = 22
      
      def initialize
        
      end
      
      def execute(cmd)
        Net::SSH.start(self.ip_address, self.user, :password => self.password, :port => self.port) do |ssh|
          @command_output = ssh.exec!(cmd)
        end
        
        return @command_output
      end
      
    end
    
  end
end