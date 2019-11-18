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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(AppDelegate.temp)
    }
    
    @IBAction func Save (_sender: Any){
        self.dismiss(animated: true)
    }
}
