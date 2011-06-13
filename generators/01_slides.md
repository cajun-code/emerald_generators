!SLIDE
#Generators#

!SLIDE bullets
#What is a generator?#
* Generator is a rails command line process to generate something inside the application
* Any commands run under rails generate is a generator.
* You can view the list of available generators by typing rails g

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
#The USAGE file.#
    $ cat USAGE
    
    Description:
        Explain the generator
    
    Example:
        rails generate install Thing
    
        This will create:
            what/will/it/create

!SLIDE code smaller
#Download the 960 stylesheets#
### https://raw.github.com/nathansmith/960-Grid-System/master/code/css/ ###

    @@@ Bash
    $ cd lib/generators/install/templates
    $ wget https://.../960.css
    $ wget https://.../reset.css
    $ wget https://.../text.css
    
!SLIDE code smaller
#Lets edit the install_generator.rb to copy the stylesheets dir in the app#
    @@@ Ruby
    module Grid960
      class InstallGenerator < Rails::Generators::Base
        source_root File.expand_path('../templates', __FILE__)
        def remove_old_layout
          remove_file "app/views/layouts/application.html.erb"
        end
        
        def copy_stylesheets
          copy_file "960.css", "public/stylesheets/960.css"
          copy_file "reset.css", "public/stylesheets/reset.css"
          copy_file "text.css", "public/stylesheets/text.css"
          template "layout.html.erb", "app/views/layouts/application.html.erb"
        end
        def app_name
          Rails.application.class.name.split("::")[0]
        end
      end
    end
    
!SLIDE code smaller
#layout.html.erb#
## Create in the templates directory##
    @@@ Ruby
    <!DOCTYPE html>
    <html>
    <head>
      <title><%= app_name %></title>
      <%%= stylesheet_link_tag "reset" %>
      <%%= stylesheet_link_tag "text" %>
      <%%= stylesheet_link_tag "960" %>
      <%%= stylesheet_link_tag "scaffold" %>
      <%%= javascript_include_tag :defaults %>
      <%%= csrf_meta_tag %>
    </head>
    <body>
    
    <%= yield %>
    
    </body>
    </html>
    
!SLIDE code
#Execute the generator#

    @@@ Bash
    $ rails g grid960:install
