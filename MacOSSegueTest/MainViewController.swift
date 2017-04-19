//
//  ViewController.swift
//  MacOSSegueTest
//
//  Created by Zion Perez on 4/19/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    @IBOutlet weak var mainViewSegueButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let array = [unichar(NSRightArrowFunctionKey)]
        mainViewSegueButton.keyEquivalent = String(utf16CodeUnits: array, count: 1)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

