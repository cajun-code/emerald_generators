!SLIDE 
# Plug-ins #

!SLIDE  
#What are Plugins#

###Encapsulated functionality meant to extend rails###
  
!SLIDE commandline

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

