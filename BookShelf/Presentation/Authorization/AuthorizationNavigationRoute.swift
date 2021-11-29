//
//  AuthorizationNavigationRoute.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxMVVM

enum AuthorizationNavigationRoute: NavigationRouteType {
    
    static let storyboardName = "Authorization"
    
    case login
    case signUp
    
    var navigationAction: NavigationAction {
        switch self {
        case .login:
            return NavigationAction.create(navigationType: .root) {
                let viewController = self.instantiateController(LoginViewController.self, storyboardName: Self.storyboardName, viewModel: LoginViewModel())
                let navigationController = NavigationController(rootViewController: viewController)
                return navigationController
            }
        case .signUp:
            return NavigationAction.create(navigationType: .push) {
                let viewController = self.instantiateController(SignUpViewController.self, storyboardName: Self.storyboardName, viewModel: SignUpViewModel())
                return viewController
            }
        }
    }
    
}
