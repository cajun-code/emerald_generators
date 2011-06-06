module Grid960

  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    
    def install_960
      template "reset.css", "public/stylesheets/reset.css"
      template "text.css", "public/stylesheets/text.css"
      template "960.css", "public/stylesheets/960.css"
      remove_file "app/views/layouts/application.html.erb"
      template "application.html.erb", "app/views/layouts/application.html.erb"
    end
    
    
  end
end