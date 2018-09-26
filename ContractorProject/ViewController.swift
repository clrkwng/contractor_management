//
//  ViewController.swift
//  ContractorProject
//
//  Created by Clark Wang on 10/20/17.
//  Copyright © 2017 Clark Wang. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {
    @IBOutlet weak var contractorEntry: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    class SendEmail: NSObject {
        static func send() {
            let service = NSSharingService(named: NSSharingService.Name.composeEmail)!
            service.recipients = ["clwang@ctemc.org"]
            service.subject = "Test Email"
            service.perform(withItems: ["This is the email content"])
        }
    }
    @IBAction func createContractor(_ sender: Any) {
        var name = contractorEnry.stringValue
        if name.isEmpty{
            return;
        }
        let 
    }
    

    @IBAction func sendReport(_ sender: Any) {
        SendEmail.send()
    }
    
    
    
}

