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
    @IBOutlet weak var pathSelection: NSPathControl!
    @IBOutlet weak var cellSelection: NSPathCell!
    
    override func viewDidAppear() {
        self.view.window!.title = "Repair Permissions"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var tStore: NSTextView!
    
    @IBAction func verifyClicked(sender: AnyObject) {
        print("Verify button clicked") // DEBUG
        print(String(cellSelection.URL))
        var urlString = String(cellSelection.URL)
        let shellInterface = clUtil()
        //tStore.textStorage!.mutableString.setString(shellInterface.diskCommand("/", verify: true))
        tStore.textStorage!.mutableString.setString(shellInterface.diskCommand(String(cellSelection.URL)))
    }
    
    @IBAction func repairClicked(sender: AnyObject) {
        print("Repair button clicked") // DEBUG
        
        let shellInterface = clUtil()
        // TODO change verify to false
        tStore.textStorage!.mutableString.setString(shellInterface.diskCommand("/", verify: true))
    }
    
    func getFileDir() -> String {
        let index = diskOption.selectedRow
        
        if index == 0 {
            return "/"
        }
        
        else {
            return "/"
        }
    }
}

