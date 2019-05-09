//
//  ControllerHelper.swift
//  MacFramework2
//
//  Created by Michael Klybor on 5/7/19.
//
//  Example of OSX classes for a framework
//

import Cocoa

public class ControllerHelper: NSObject {
    public static func setLabel (_ label: NSTextField, toText text: String) {
        label.stringValue = text
    }
    
    public static func setButton (_ button: NSButton, toText text: String) {
        button.title = text
    }
}
