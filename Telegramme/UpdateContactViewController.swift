//
//  UpdateContactViewController.swift
//  Telegramme
//
//  Created by MAD2_P01 on 18/11/19.
//  Copyright © 2019 AniqAzmi. All rights reserved.
//

import Foundation
import UIKit

class UpdateContactViewController: UIViewController
{
    var appDelegate = UIApplication.shared.delegate as! AppDelegate

//    @IBOutlet weak var tvFirstname: UITextField!
//    @IBOutlet weak var tvLastname: UITextField!
//    @IBOutlet weak var tvMobile: UITextField!
    @IBOutlet weak var tvFirstname: UITextField!
    
    @IBOutlet weak var tvLastname: UITextField!
    
    @IBOutlet weak var tvMobile: UITextField!
    

    var index = -1
    var firstNameUpdate:String = ""
    var lastNameUpdate:String = ""
    var mobileUpdate:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvFirstname.text! = firstNameUpdate
        tvLastname.text = lastNameUpdate
        tvMobile.text = mobileUpdate
    }
    

    
    @IBAction func btnSave(_ sender: Any) {
        appDelegate.contactList[index].firstName = tvFirstname.text!
        appDelegate.contactList[index].lastName = tvLastname.text!
        appDelegate.contactList[index].mobileNo = tvMobile.text!
        navigationController?.popViewController(animated: true)
    }
}
