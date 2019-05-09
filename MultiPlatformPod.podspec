#
# Be sure to run `pod lib lint MultiPlatformPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MultiPlatformPod'
  s.version          = '0.1.0'
  s.summary          = 'A well-organizaed workspace for the development of multi-plaform Pods'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This Pod provides a simple Xcode project and workspace that is organized for the creation of multi-plafrom Pods.  It supports OSX and IOS, and can be easily extended to support additional Swift platforms.  After installation, the workspace may be used to develop a multi-plaform Pod.  The names of the products, and other references, should be changed from 'MultiPlatformPod' to the name of your actual Pod.  Its organization and configuation provide a solution that builds and runs on IOS and OSX, overcoming a number of issues of getting this all to work on multiple platforms.  Thus, the developer of a Pod intended to work on multiple platforms can save a lot of time in having to deal with those issues.
DESC

  s.homepage         = 'https://github.com/mklybor/MultiPlatformPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mklybor' => 'michael_r_klybor@hotmail.com' }
  s.source           = { :git => 'https://github.com/mklybor/MultiPlatformPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # specify the release numbers for each target platform
  # any new plartoferm target must be added here (e.g., WatchOS)
  s.ios.deployment_target = '12.2'
  s.osx.deployment_target = '10.14'
  
  # specify the version of Swift that is to be used, the iniital build was done with 4.2
  s.swift_version = '4.2'
  
  # tell where the source files are for each platform build
  # any new target platform must have a definition addeed here that refers to the directories that
  # contain its source files
  s.ios.source_files = 'MultiPlatformPod/Classes/Common/*.{swift,m,h}', 'MultiPlatformPod/Classes/IOS/*.{swift,m,h}'
  s.osx.source_files = 'MultiPlatformPod/Classes/Common/*.{swift,m,h}', 'MultiPlatformPod/Classes/OSX/*.{swift,m,h}'

  # change this if your resources are in a different directory, or if there are platform-specific resources
  s.resource_bundles = {
    'MultiPlatformPod' => ['MultiPlatformPod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
