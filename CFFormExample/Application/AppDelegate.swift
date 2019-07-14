//
//  AppDelegate.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 14/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: CFFormController())
        window?.makeKeyAndVisible()

        return true
    }

}
