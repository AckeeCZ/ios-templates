module Fastlane
  module Actions
    class InstallTemplatesAction < Action
      def self.run(params)
        require 'tmpdir'
        git_repo = params[:git_repo]
        templates_dir = params[:templates_dir]
        
        if ! File.exists? templates_dir and git_repo.to_s.empty?
          git_repo = UI.input("Please enter the URL to the git repository with templates:")
        end

        if git_repo 
          tmp_dir = Dir.mktmpdir("fl_templates")
          branch = params[:branch]

          branch_option = ""
          branch_option = "--branch #{branch}" if branch != 'HEAD'

          UI.message "Cloning remote git repo..."

          sh "GIT_TERMINAL_PROMPT=0 git clone '#{git_repo}' '#{tmp_dir}' --depth 1 -n #{branch_option}"
          sh "cd '#{tmp_dir}' && git checkout #{branch} '#{templates_dir}'"

          src_dir = File.join(tmp_dir, params[:templates_dir])
        else
          #Install from local dir 
          src_dir = File.expand_path(params[:templates_dir])
        end

        install_dir = File.expand_path(params[:install_dir])
        
        if ! File.exists? install_dir
          UI.message "Creating File Template Xcode directory #{install_dir}"
          FileUtils.mkdir_p install_dir
        end

        template_folders = Dir.entries(src_dir)

        template_folders.each do |template_folder|
          template_folder_path = "#{src_dir}/#{template_folder}"

          if File.directory?(template_folder_path) 

            xctemplates = Dir.entries(template_folder_path).select{ |e| File.extname(e) == ".xctemplate"  }
            
            install_folder_path = "#{install_dir}/#{template_folder}/"
            FileUtils.mkdir_p install_folder_path

            xctemplates.each do |xctemplate|
              src_template_path = "#{template_folder_path}/#{xctemplate}"
              
              if File.exists? "#{install_folder_path}/#{xctemplate}"
                UI.important "Removing template #{xctemplate}"
                FileUtils.rm_rf "#{install_folder_path}/#{xctemplate}"
              end

              UI.success "Installing template #{xctemplate} in folder #{install_folder_path}"
              FileUtils.cp_r src_template_path, install_folder_path
            end

          end 
        end
        return true
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Installs templates to xcode"
      end

      def self.available_options
        [
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
          FastlaneCore::ConfigItem.new(key: :git_repo,
                                       env_name: "FL_TEMPLATES_GIT_REPO",
                                       description: "URL to git repository with templates",
                                       optional: true,
                                       is_string: true
                                       ),
          FastlaneCore::ConfigItem.new(key: :branch,
                                       env_name: "FL_TEMPLATES_BRANCH",
                                       description: "Branch in the git repository",
                                       default_value: "HEAD"
                                       )
        ]
      end

    end
  end
end
