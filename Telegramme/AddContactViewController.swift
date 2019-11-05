//
//  AddContactViewController.swift
//  Telegramme
//
//  Created by MAD2_P01 on 5/11/19.
//  Copyright © 2019 AniqAzmi. All rights reserved.
//

import Foundation
import UIKit
class AddContactViewController: UIViewController {
    @IBOutlet weak var firstNameFld: UITextField!
    @IBOutlet weak var lastNameFld: UITextField!
    @IBOutlet weak var mobileFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func cancelBtn(_ sender: Any) {
        firstNameFld.text = ""
        lastNameFld.text = ""
        mobileFld.text = ""
    }
    @IBAction func createBtn(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let firstname = firstNameFld.text!
        let lastname = lastNameFld.text!
        let mobileno = mobileFld.text!
        
        let newContact = Contact(firstname: firstname, lastname: lastname, mobileno: mobileno)
        
        appDelegate.contactList.append(newContact)
        
        
        
        print(String(appDelegate.contactList.count))
    }
    
    
}
