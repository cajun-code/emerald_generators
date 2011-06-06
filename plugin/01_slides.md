!SLIDE 
# Plug-ins #

!SLIDE  
#What are Plugins#

###Encapsulated functionality meant to extend rails###
  
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

    $ rails g plugin grid_960

      create  vendor/plugins/grid_960
      create  vendor/plugins/grid_960/MIT-LICENSE
      create  vendor/plugins/grid_960/README
      create  vendor/plugins/grid_960/Rakefile
      create  vendor/plugins/grid_960/init.rb
      create  vendor/plugins/grid_960/install.rb
      create  vendor/plugins/grid_960/uninstall.rb
      create  vendor/plugins/grid_960/lib
      create  vendor/plugins/grid_960/lib/grid_960.rb
      invoke  test_unit
      inside    vendor/plugins/grid_960
      create      test
      create      test/grid_960_test.rb
      create      test/test_helper.rb
