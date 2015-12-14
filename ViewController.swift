//
//  ViewController.swift
//  Corepair
//
//  Created by Afnan Enayet on 12/14/15.
//  Copyright © 2015 Afnan Enayet. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var verifyButton: NSButton!
    @IBOutlet weak var repairButton: NSButton!
    @IBOutlet weak var diskOption: NSMatrix!
    @IBOutlet weak var outputField: NSScrollView!
    
    override func viewDidAppear() {
        self.view.window!.title = "Repair Permissions"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func repairButton(sender: AnyObject) {
        let shellInterface = clUtil()
        
        shellInterface.diskCommand("/", verify: true);
    }


}

