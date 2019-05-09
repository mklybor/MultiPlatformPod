//
//  ControllerHelper.swift
//  IOSFramework2
//
//  Created by Michael Klybor on 5/7/19.
//
//  Example of IOS classes for a framework
//

import UIKit

public class ControllerHelper: NSObject {
    public static func setLabel (_ label: UILabel, toText text: String) {
        label.text = text
    }
    
    public static func setButton (_ button: UIButton, toText text: String) {
        button.setTitle (text, for:.normal)
    }
}
