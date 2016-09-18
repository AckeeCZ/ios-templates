![](http://img.ack.ee/default/image/test/ios_templates_logo.png)
# Ackee iOS Swift Templates for Xcode with Fastlane support

This repository is both library of useful swift templates for Xcode and small yet elegant tool for sharing templates with your colleagues. 

We will be happy if you will use it either way. 

## Structure 
In the root you will find 
- Readme (no shit sherlock) 🙄
- Fastfile and fastlane actions
- Templates folder containing various templates that we use

## Usage 
You will need [Fastlane][1] for running the script. once installed go to the root of the repo and try one of theese commands

### Install
This command will install all templates **from** repository to the Xcode. Installation process will override older versions of templates with same name.
```
fastlane run install_templates
```

### Add template

To list all currently installed template and add one to the repository call:
 
```
fastlane add_template
```

To pick a specific one call:
```
fastlane add_template name:"SomeTemplate"
```


### Locations

If you dont trust us you can manually copy files from `templates` folder to 
```
~/Library/Developer/Xcode/Templates/File Templates
```

### Fastlane support 

To add `install_templates` functionality in your Fastlane project, simply copy the action in [install_templates.rb](fastlane/actions/install_templates.rb) to your fastlane/actions folder. You will then be able to use the action in you Fastfile like this:

```
install_templates(git_repo: "https://github.com/AckeeCZ/ios-templates.git")
```

## Forking this repository 
If you woul like to use our fastfile script and repo scheme within your team we would be happy to know what it helped to someone. drop us a tweet at [@ackeecz][2] or leave a star here on Github. BTW we would also like to know what snippets you use!

## Sharing is caring
This tool and repo has been opensourced within our `#sharingiscaring` action when we have decided to opensource our internal projects

[1]:	https://github.com/fastlane/fastlane
[2]:	https://twitter.com/AckeeCZ