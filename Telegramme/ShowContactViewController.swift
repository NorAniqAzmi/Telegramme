//
//  ShowContactViewController.swift
//  Telegramme
//
//  Created by MAD2_P01 on 5/11/19.
//  Copyright © 2019 AniqAzmi. All rights reserved.
//

import Foundation
import UIKit
class ShowContactViewController : UITableViewController{
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.tableView.reloadData() //refresh data
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editContactSegue"
        {
            let index = self.tableView.indexPathForSelectedRow
            (segue.destination as! UpdateContactViewController).firstNameUpdate = appDelegate.contactList[index!.row].firstName
            (segue.destination as! UpdateContactViewController).lastNameUpdate = appDelegate.contactList[index!.row].lastName
            (segue.destination as! UpdateContactViewController).mobileUpdate = appDelegate.contactList[index!.row].mobileNo
            (segue.destination as! UpdateContactViewController).index = index!.row
            print(" Heelo this numberrerdasvbhjvfyv ")
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.contactList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        let contact = appDelegate.contactList[indexPath.row]
        cell.textLabel!.text = "\(contact.firstName) \(contact.lastName)"
        cell.detailTextLabel!.text = "\(contact.mobileNo)"
        return cell
        
    }
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath)
//        -> Bool {
//            if indexPath.section == 0{
//                return false
//            }
//            else {
//                return true
//            }
//
//    }
    override func tableView(_ tableView: UITableView, commit editingStyle:
        UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
        appDelegate.contactList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        
        
        }
        
        
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppDelegate.temp = Int(indexPath.row)
        
        
    }
    
    
}


