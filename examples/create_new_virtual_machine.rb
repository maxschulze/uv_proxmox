require 'uv_proxmox'

connection = Uv::Proxmox::Connection.new
connection.user       = 'root'
connection.password   = ''
connection.ip_address = 'vm1.mo-stud.io'

Uv::Proxmox.connection = connection

Uv::Proxmox::VirtualMachine.create do
  id        1001
  template  'debian-6.0-standard_6.0-2_amd64.tar.gz'
  memory    1024
  swap      1024
  cpus      2
  cpu_units 500
  boot      1
  disk      10
end

puts Uv::Proxmox.commands.inspect

Uv::Proxmox.run