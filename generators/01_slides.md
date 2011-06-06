!SLIDE
#Generators#

!SLIDE commandline smaller

    $ rails g
    
    Usage: rails generate GENERATOR [args] [options]
    
    General options:
      -h, [--help]     # Print generator's options and usage
      -p, [--pretend]  # Run but do not make any changes
      -f, [--force]    # Overwrite files that already exist
      -s, [--skip]     # Skip files that already exist
      -q, [--quiet]    # Suppress status output
    
    Please choose a generator below.
    
    Rails:
      controller
      generator
      helper
      integration_test
      mailer
      migration
      model
      observer
      performance_test
      plugin
      resource
      scaffold
      scaffold_controller
      session_migration
      stylesheets

!SLIDE commandline small
    $ rails g generator
    
    Usage:
      rails generate generator NAME [options]
    
    Options:
      [--namespace]  # Namespace generator under lib/generators/name
                     # Default: true
    
    Runtime options:
      -f, [--force]    # Overwrite files that already exist
      -p, [--pretend]  # Run but do not make any changes
      -q, [--quiet]    # Supress status output
      -s, [--skip]     # Skip files that already exist
    
    Description:
        Stubs out a new generator at lib/generators. Pass the generator name as an argument,
        either CamelCased or snake_cased.
    
    Example:
        `rails generate generator Awesome`
    
        creates a standard awesome generator:
            lib/generators/awesome/
            lib/generators/awesome/awesome_generator.rb
            lib/generators/awesome/USAGE
            lib/generators/awesome/templates/

!SLIDE commandline
    $ rails g generator install
  
      create  lib/generators/install
      create  lib/generators/install/install_generator.rb
      create  lib/generators/install/USAGE
      create  lib/generators/install/templates

!SLIDE bullets small
#Created Two Files and a Folder#

* _generator.rb - Worker file
* USAGE - text document describing the generator
* templates - directory for erb templates used in the generator

!SLIDE code small
#Lets Look at the generator#

    @@@ Ruby
  
    class InstallGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
    end
    
!SLIDE commandline small
#USAGE#
    $ cat USAGE
    
    Description:
        Explain the generator
    
    Example:
        rails generate install Thing
    
        This will create:
            what/will/it/create
