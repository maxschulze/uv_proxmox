require 'rubygems'
require 'rake'

$:.unshift File.join(File.dirname(__FILE__), 'lib')


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "uv_proxmox"
    gem.summary = %Q{A ruby api for working with the proxmox virtual machine manager}
    gem.description = %Q{A ruby api for working with the proxmox virtual machine manager}
    gem.email = "max.schulze@gmail.com"
    gem.homepage = "http://github.com/maxschulze/uv_proxmox"
    gem.authors = ["maxschulze"]
    gem.require_paths = %w(lib)
    gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
    gem.add_dependency "net-ssh", ">= 0"
    gem.add_dependency "blockenspiel", ">= 0"
    gem.add_dependency "activesupport", ">= 3.0.0"
    gem.files += Dir.glob("lib/**/*")
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "uv_proxmox #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
