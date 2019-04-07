
//
//  ViewController.swift
//  ButtonClickCounter
//
//  Created by mark on 3/15/19.
//  Copyright © 2019 Swift Dev Journal. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var clicksLabel: NSTextField!
    
    var clicks = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func handleButtonClick(_ sender: Any) {
        incrementClicks()
        updateClicksLabel()
    }
    
    func incrementClicks() {
        clicks += 1
    }
    
    func updateClicksLabel() {
        clicksLabel.stringValue = clicks.description
    }
}

