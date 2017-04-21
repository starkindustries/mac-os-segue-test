//
//  SheetController.swift
//  MacOSSegueTest
//
//  Created by Zion Perez on 4/19/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import Cocoa

class SheetController: NSViewController {

    var counter: Int = 0
    @IBOutlet weak var dismissButton: NSButton!
    @IBOutlet weak var sheetFocusTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup Key Equivalents
        let array = [unichar(NSLeftArrowFunctionKey)]
        dismissButton.keyEquivalent = String(utf16CodeUnits: array, count: 1)
        
        // Set Accessibility Label
        dismissButton.setAccessibilityLabel("DismissButton")
        
        // Set button target and action
        // http://stackoverflow.com/a/25007663/2179970
        dismissButton.target = nil
        dismissButton.action = #selector(MainViewController.dismissAction(_:))
        
        // Set nextResponder
        dismissButton.nextResponder = self.parent
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        sheetFocusTextField.becomeFirstResponder()
    }
}
