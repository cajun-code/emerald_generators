!SLIDE
#Gems#

!SLIDE bullets
#What are Gems#

* System use to distribute external libraries.
* Zip compressed file for libraries storage

!SLIDE commandline smaller
#Using Bundler to Create Gems#

    @@@ Bash
    $ bundle gem grid960
        create  grid960/Gemfile
        create  grid960/Rakefile
        create  grid960/.gitignore
        create  grid960/grid960.gemspec
        create  grid960/lib/grid960.rb
        create  grid960/lib/grid960/version.rb
      Initializating git repo in /home/alley/Projects/emerald_generators/code/grid960

!SLIDE code smaller
#gemspec File#
    @@@ Ruby
    # -*- encoding: utf-8 -*-
    $:.push File.expand_path("../lib", __FILE__)
    require "grid960/version"
    
    Gem::Specification.new do |s|
      s.name        = "grid960"
      s.version     = Grid960::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["TODO: Write your name"]
      s.email       = ["TODO: Write your email address"]
      s.homepage    = ""
      s.summary     = %q{TODO: Write a gem summary}
      s.description = %q{TODO: Write a gem description}
    
      s.rubyforge_project = "grid960"
      s.add_dependency "rails", ">3.0.0"
      s.files         = `git ls-files`.split("\n")
      s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
      s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
      s.require_paths = ["lib"]
    end

!SLIDE bullets

#Copy generator code inside lib directory#

!SLIDE bullets small
# Develop the gem#
*  Create a test project with rails new
*  Add the grid960 gem to the Gemfile
  +  Use the :path => to point to the gem on the file system
*  Run Rails g command to use the generator

!SLIDE bullets
#Package and Deploy#
* To package the gem run rake build
* To deploy the gem run "gem push pkg/grid960-0.0.1.gem"
