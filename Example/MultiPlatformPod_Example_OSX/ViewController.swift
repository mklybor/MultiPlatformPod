//
//  ViewController.swift
//  MultiPlatformPod_Example_OSX
//
//  Created by Michael Klybor on 5/9/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//
//  A simple view controller for OSX  UI that uses classes from the framework
//

import Cocoa
import MultiPlatformPod

class ViewController: NSViewController {

    @IBOutlet weak var dateButton: NSButton!
    @IBAction func buttonClicked(_ sender: Any) {
        //a simple action method to servcice a button click by using classes from the framework
        ControllerHelper.setButton(dateButton, toText: CurrentDate.dateStr())
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // supply an initial value for the label, using classes from the framework
        ControllerHelper.setButton(dateButton, toText: CurrentDate.dateStr())
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

