//
//  MainTabBarController.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import UIKit
import RxMVVM

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewControllers = [
            createViewController(forNavigationRoute: BooksNavigationRoute.books)
        ]
    }
    
    private func createViewController(forNavigationRoute navigationRoute: NavigationRouteType!) -> UIViewController {
        let viewController = navigationRoute.navigationAction.destinationController!
        return viewController
    }

}
