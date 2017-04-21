//
//  ViewController.swift
//  MacOSSegueTest
//
//  Created by Zion Perez on 4/19/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    var counter: Int = 0
    @IBOutlet weak var mainViewSegueButton: NSButton!
    @IBOutlet weak var helloWorldTextField: NSTextField!
    @IBOutlet weak var mainFocusTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup Key Equivalents
        let array = [unichar(NSRightArrowFunctionKey)]
        mainViewSegueButton.keyEquivalent = String(utf16CodeUnits: array, count: 1)
    }

    // http://stackoverflow.com/a/33837816/2179970
    // dismissViewController: Dismisses a presented view controller,
    // using the same animator that presented it.
    func dismissAction(_ sender: AnyObject) {
        print("Sender: \(sender)")
        counter += 1
        let buttonAccessLabel = (sender as! NSButton).accessibilityLabel()
        helloWorldTextField.stringValue = "Action #" + counter.description + " from: " + buttonAccessLabel!
        self.dismissViewController(self.presentedViewControllers!.first!)
        mainFocusTextField.becomeFirstResponder()
    }
}

