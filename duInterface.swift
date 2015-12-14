//
//  duInterface.swift
//  Corepair
//
//  Created by Afnan Enayet on 12/14/15.
//  Copyright © 2015 Afnan Enayet. All rights reserved.
//

import Cocoa
import Foundation
class clUtil {
    
    func diskCommand (path: String, verify: Bool) -> String {
        
        var argument: String
        
        if verify {
            argument = "--verify"
        }
        
        else {
            argument = "--repair"
        }
        
        let task = NSTask()
        task.launchPath = "/usr/libexec/repair_packages"
        task.arguments = [argument, "--standard-pkgs", path]
        
        let pipe = NSPipe()
        
        task.standardOutput = pipe
        task.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: NSUTF8StringEncoding)
        return output!
    }
    
}


