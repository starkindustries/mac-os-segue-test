//
//  SheetController.swift
//  MacOSSegueTest
//
//  Created by Zion Perez on 4/19/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import Cocoa

class SheetController: NSViewController {

    @IBOutlet weak var dismissButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let array = [unichar(NSLeftArrowFunctionKey)]
        dismissButton.keyEquivalent = String(utf16CodeUnits: array, count: 1)
        print("sheet: key equivalent set!")
    }
    
    // http://stackoverflow.com/a/33837816/2179970
    // dismissViewController: Dismisses a presented view controller, 
    // using the same animator that presented it.
    @IBAction func dismiss(_ sender: AnyObject) {
        self.dismissViewController(self)
    }
}
