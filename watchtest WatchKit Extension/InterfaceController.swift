//
//  InterfaceController.swift
//  watchtest WatchKit Extension
//
//  Created by Roger on 2014-11-19.
//  Copyright (c) 2014 Roger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    
    @IBAction func btnClick() {
        
        mainLabel.setText("Ok, Now is ")
        
        timeLabel.setAlpha(1)
    }
    
    @IBOutlet weak var mainLabel: WKInterfaceLabel!

    @IBOutlet weak var timeLabel: WKInterfaceDate!
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
