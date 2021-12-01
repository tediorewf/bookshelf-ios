//
//  MainNavigationRoute.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 01.12.2021.
//

import Foundation
import RxMVVM

enum MainNavigationRoute: NavigationRouteType {
    
    case tabBar
    
    var navigationAction: NavigationAction {
        switch self {
        case .tabBar:
            return NavigationAction.create(navigationType: .root) {
                return MainTabBarController()
            }
        }
    }
    
}
