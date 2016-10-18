![ackee|iOSTemplates](https://github.com/AckeeCZ/ios-templates/blob/master/Resources/cover-image.png)

# Ackee iOS Swift Templates for Xcode with Fastlane support

This repository is both library of useful swift templates for Xcode and small yet elegant tool for sharing templates with your colleagues.

## Structure
In the root you will find

- Readme
- Fastlane actions
- Templates that we use to create classes for MVVM, Quick, Swinject and others  

## Usage
You will need [Fastlane][1] for running the script. Once installed go to the root of the repo and try one of these commands

### Install
This command will install all templates from repository to the Xcode. Installation process will override older versions of templates with the same name.

```
fastlane run install_templates
```

The templates will appear in the *New file* dialog under Ackee

![Templates](http://grab.by/SOJq)

#### Version compatibility

As templates are installed directly to shared Xcode folder, it's tricky for this repo to be versioned but as far as it's possible we at least provide you with branch you can use.

| Swift Version | branch |
| ------------- | ------ |
| 3.X           | master |
| 2.X           | swift2 |

To install Swift 2 compatible version use
```
fastlane run install_templates git_repo:git@github.com:AckeeCZ/ios-snippets.git branch:swift2
```


### Add template

To list all currently installed template and add one to the repository call:

```
fastlane run add_template
```

To pick a specific one call:

```
fastlane run add_template name:"SomeTemplate"
```


### Locations

If you dont trust us you can manually copy files from `templates` folder to
```
~/Library/Developer/Xcode/Templates/File Templates
```

### Fastlane support

To add *install* functionality in your Fastlane project, simply copy the action in [install_templates.rb](fastlane/actions/install_templates.rb) to your fastlane/actions folder. You will then be able to use the action in you Fastfile like this:

```
install_templates(git_repo: "https://github.com/AckeeCZ/ios-templates.git")
```

## Forking this repository
If you would like to use the fastfile actions and repo scheme within your team we would love to hear about it. Drop us a tweet at [@ackeecz][2] or leave a star here on Github. BTW we would also like to know what templates you use!

## Sharing is caring
This tool and repo has been opensourced within our `#sharingiscaring` action when we have decided to opensource our internal projects

## Author

[Ackee](www.ackee.cz) team

## License

iOS templates are available under the MIT license. See the LICENSE file for more info.

[1]:	https://github.com/fastlane/fastlane
[2]:	https://twitter.com/AckeeCZ
