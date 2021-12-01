//
//  AuthorizationNavigationRoute.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxMVVM

enum AuthorizationNavigationRoute: NavigationRouteType {
    
    case login
    case signUp
    
    var navigationAction: NavigationAction {
        switch self {
        case .login:
            return NavigationAction.create(navigationType: .root) {
                let viewController = self.instantiateController(LoginViewController.self,
                                                                storyboardName: Storyboard.authorization,
                                                                viewModel: LoginViewModel())
                let navigationController = NavigationController(rootViewController: viewController)
                return navigationController
            }
        case .signUp:
            return NavigationAction.create(navigationType: .push) {
                let viewController = self.instantiateController(SignUpViewController.self,
                                                                storyboardName: Storyboard.authorization,
                                                                viewModel: SignUpViewModel())
                return viewController
            }
        }
    }
    
}
