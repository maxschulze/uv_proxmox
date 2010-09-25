# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{uv_proxmox}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["maxschulze"]
  s.date = %q{2010-09-25}
  s.description = %q{A ruby api for working with the proxmox virtual machine manager}
  s.email = %q{max.schulze@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/uv_proxmox.rb",
     "lib/uv_proxmox/connection.rb",
     "lib/uv_proxmox/virtual_machine.rb",
     "test/helper.rb",
     "test/test_uv_proxmox.rb"
  ]
  s.homepage = %q{http://github.com/maxschulze/uv_proxmox}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A ruby api for working with the proxmox virtual machine manager}
  s.test_files = [
    "test/helper.rb",
     "test/test_uv_proxmox.rb",
     "examples/create_new_virtual_machine.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<net-ssh>, [">= 0"])
      s.add_runtime_dependency(%q<blockenspiel>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<net-ssh>, [">= 0"])
      s.add_dependency(%q<blockenspiel>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<net-ssh>, [">= 0"])
    s.add_dependency(%q<blockenspiel>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
  end
end

