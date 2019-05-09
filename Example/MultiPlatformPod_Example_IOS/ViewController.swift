//
//  ViewController.swift
//  MultiPlatformPod_Example_IOS
//
//  Created by Michael Klybor on 5/9/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//
//  This is an example of IOS-specific code.  In this case, it has UIKit dependencies, and is a simple,
//  typical start to a view controller
//

import UIKit
import MultiPlatformPod


class ViewController: UIViewController {
    
    @IBAction func buttonClicked(_ sender: Any) {
        //implement a simple action method to service a button click and update a label with the current time
        //uses classes from the framework that has both IOS-specicic and cross-platofrm code
        ControllerHelper.setButton(dateButton, toText: CurrentDate.dateStr())

    }
    @IBOutlet weak var dateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //supply an initial value for the text label
        ControllerHelper.setButton(dateButton, toText: CurrentDate.dateStr())
    }
    

}

