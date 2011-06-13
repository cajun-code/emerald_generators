!SLIDE 
# Plug-ins #

!SLIDE  bullets
#What are Plugins#

* Encapsulated functionality meant to extend rails
* Plugins are installed into a rails application

!SLIDE commandline smaller

    $ rails plugin
    
    Usage: plugin [OPTIONS] command
    Rails plugin manager.
    
    GENERAL OPTIONS
      -r, --root=DIR           Set an explicit rails app directory.
                               Default: /home/alley/Projects/emerald_generators/code/contacts
      -s, --source=URL1,URL2   Use the specified plugin repositories instead of the defaults.
      -v, --verbose            Turn on verbose output.
      -h, --help               Show this help message.
    
    COMMANDS
      install    Install plugin(s) from known repositories or URLs.
      remove     Uninstall plugins.
    
    EXAMPLES
      Install a plugin:
        rails plugin install continuous_builder
      Install a plugin from a subversion URL:
        rails plugin install http://dev.rubyonrails.com/svn/rails/plugins/continuous_builder
      Install a plugin from a git URL:
        rails plugin install git://github.com/SomeGuy/my_awesome_plugin.git

!SLIDE 
#Creating a plugin#

!SLIDE commandline smaller
    $ rails g plugin
    
    Usage:
      rails generate plugin NAME [options]
    
    Options:
      -r, [--tasks=TASKS]          # When supplied creates tasks base files.
      -g, [--generator]            # Indicates when to generate generator
      -t, [--test-framework=NAME]  # Test framework to be invoked
                                   # Default: test_unit
    
    Runtime options:
      -f, [--force]    # Overwrite files that already exist
      -p, [--pretend]  # Run but do not make any changes
      -q, [--quiet]    # Supress status output
      -s, [--skip]     # Skip files that already exist
    
    Description:
        Stubs out a new plugin at vendor/plugins. Pass the plugin name, either
        CamelCased or under_scored, as an argument.
    
    Example:
        `rails generate plugin BrowserFilters`
    
        creates a standard browser_filters plugin:
            vendor/plugins/browser_filters/README
            vendor/plugins/browser_filters/init.rb
            vendor/plugins/browser_filters/install.rb
            vendor/plugins/browser_filters/lib/browser_filters.rb
            vendor/plugins/browser_filters/test/browser_filters_test.rb

!SLIDE commandline
# Create grid960 plugin#
    $ rails g plugin grid960

      create  vendor/plugins/grid960
      create  vendor/plugins/grid960/MIT-LICENSE
      create  vendor/plugins/grid960/README
      create  vendor/plugins/grid960/Rakefile
      create  vendor/plugins/grid960/init.rb
      create  vendor/plugins/grid960/install.rb
      create  vendor/plugins/grid960/uninstall.rb
      create  vendor/plugins/grid960/lib
      create  vendor/plugins/grid960/lib/grid960.rb
      invoke  test_unit
      inside    vendor/plugins/grid960
      create      test
      create      test/grid960_test.rb
      create      test/test_helper.rb

!SLIDE code small
#Copy the generator#
##from lib to plugin##
*****
    @@@ Bash
    $cp -R lib/generators vendor/plugins/grid960/lib

!SLIDE code 
#Rails G#
##to check if generator loaded##
******
    @@@ Bash
    $rails g
    
    Grid960
      grid960:install
      
