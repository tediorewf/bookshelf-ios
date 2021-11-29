//
//  AppDelegate.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 16.11.2021.
//

import UIKit
import RxMVVM

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Navigator.set(window: &window, route: AuthorizationNavigationRoute.login)
        
        return true
    }

}
