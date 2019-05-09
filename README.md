# MultiPlatformPod

This Pod provides a simple way of organizing code within a Pod that can be built and deployed on multiple platforms.  Platform-specific versions of the framework and example application products can be created.  The products of the built pod are frameworks that run on each supported platform, example apps that use the frameworks, unit tests (Xcest) and UI tests (Xctest).

The Pod can be used a starter for developing a multi-plaform Pod.  It has been tested on IOS and OSX.  It incorporates a my learning experience for getting the framework, example applications and testing classes to build and run on each platform; and to be a well-behaved Pod.  Hoping that it can save you some time in getting your Pod together.  It was derived from the template Pod project/workspace created by 'pod lib create'.

[![CI Status](https://img.shields.io/travis/mklybor/MultiPlatformPod.svg?style=flat)](https://travis-ci.org/mklybor/MultiPlatformPod)
[![Version](https://img.shields.io/cocoapods/v/MultiPlatformPod.svg?style=flat)](https://cocoapods.org/pods/MultiPlatformPod)
[![License](https://img.shields.io/cocoapods/l/MultiPlatformPod.svg?style=flat)](https://cocoapods.org/pods/MultiPlatformPod)
[![Platform](https://img.shields.io/cocoapods/p/MultiPlatformPod.svg?style=flat)](https://cocoapods.org/pods/MultiPlatformPod)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

This will create a workspace containing the framework scaffold project and the example apps that use the framework.  The example contains directories to contain IOS and OSX applications.  A sample applications is given.  Additional platforms (e,g,. WatchOS) can be added as additional Xcode targets.  Any new targets need to be added to the podfile, following the same structure as the IOS and OSX targets that are present.

The workspace also contains a "Development Pods" folder which can be used to develop an actual pod that is cross-platform.  Place code into the sub-folders for each respective platform.  Place code that is cross-platform (depends only upon Foundation framework) in the "Common" sub-folder.

If any additional platforms are requred, add appropriate framework targets to the Podspec file, following the conventions for IOS and OSX that are already there.  Add new source file and platform definitions for each new target.

This scaffolding provides a means of organizing, developing and testing a framework that can be built to work on any platofrm supported by Swift/Cocoapods/Xcode.  It contains simple example classes and testing that  build and execute on the initial platforms.

## Requirements

## Installation

MultiPlatformPod is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

pod 'MultiPlatformPod'

After installation of the Example, you will have a nice scaffolding to follow in which to develop and test frameworks that will work on multiple Swift platforms.  It is initially set up for IOS and OSX.  Additional platform targets can be added.

When adding an additional target for the framework, create a sub-folder to contain plafform-specific classes, and make sure tha tthe podspec is updated to include any new directories in the source file search path.

## Author

mklybor, michael_r_klybor@hotmail.com

## License

MultiPlatformPod is available under the MIT license. See the LICENSE file for more info.
