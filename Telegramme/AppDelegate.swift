//
//  AppDelegate.swift
//  Telegramme
//
//  Created by MAD2_P01 on 5/11/19.
//  Copyright © 2019 AniqAzmi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var contactList:[Contact] = []
    static var temp:Int = 0


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        contactList = [
        Contact(firstname: "Apple", lastname: "Seed", mobileno: "91234567"),
        Contact(firstname: "Blue", lastname: "Berry", mobileno: "98765432"),
        Contact(firstname: "Claud", lastname: "Cool", mobileno: "90000001"),
        Contact(firstname: "Claudd", lastname: "Cooll", mobileno: "90000002")
        ]
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

