module Fastlane
  module Actions
    module SharedValues
      ADD_TEMPLATE_CUSTOM_VALUE = :ADD_TEMPLATE_CUSTOM_VALUE
    end

    class AddTemplateAction < Action
      def self.run(params)
        dest_dir = File.expand_path(File.dirname(__FILE__))
        install_dir = File.expand_path(params[:install_dir])
        name = params[:name]
        
        templates = Dir.glob("#{install_dir}/**/*.xctemplate")
        
        if !name
          UI.message "#{templates.count} templates found in #{install_dir}"
          template_path = File.expand_path(UI.select("Select template: ", templates.map { |template| relative_path(template, install_dir) } ), install_dir)
        else 
          matching_templates = templates.select { |template| File.basename(template, ".xctemplate") == name }

          if matching_templates.count == 0
            UI.user_error!("No template with the name #{name} found in #{install_dir}")
          elsif matching_templates.count > 1 
            UI.message "Multiple templates with the name #{name} found"
            template_path = UI.select("Select template: ", matching_templates)
          elsif matching_templates.count == 1
            if !UI.confirm("Found template in #{matching_templates[0]}, do you wish to add it?}") 
              return false
            else 
              template_path = matching_templates[0]
            end
          end
        end

        relative_path = relative_path(template_path, install_dir)
        destination_path =  params[:templates_dir] + "/" + relative_path

        if File.exists? destination_path 
          if UI.confirm("Template #{relative_path} already exists, do you wish to replace it?") 
            FileUtils.remove_dir(destination_path)
          else
            return false
          end
        end

        destination_folder = File.expand_path("..", destination_path)
        FileUtils.mkdir_p(destination_folder)
        FileUtils.cp_r template_path, destination_folder

        if UI.confirm("Successfully added #{relative_path}, do you wish to commit?")
          sh "git commit -am \"added template #{relative_path}\""
        end 
        
      end

      def self.relative_path(path, relative_to)
        Pathname.new(path).relative_path_from(Pathname.new(relative_to)).to_s
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Adds existing template to the repository by a name"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :name,
                                       description: "Name of the template",
                                       optional: true
                                       ),
          FastlaneCore::ConfigItem.new(key: :install_dir,
                                       env_name: "FL_TEMPLATES_INSTALL_DIR", # The name of the environment variable
                                       description: "Installation directory for the templates", # a short description of this parameter
                                       default_value: "~/Library/Developer/Xcode/Templates/File Templates"
                                       ),
          FastlaneCore::ConfigItem.new(key: :templates_dir,
                                       env_name: "FL_TEMPLATES_TEMPLATES_DIR",
                                       description: "Relative path to folder with templates in the repo", 
                                       default_value: "templates"
                                       ),
        ]
      end

      def self.authors
        ["tkohout"]
      end

    end
  end
end
