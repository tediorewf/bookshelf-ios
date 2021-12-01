//
//  BooksNavigationRoute.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 01.12.2021.
//

import Foundation
import RxMVVM

enum BooksNavigationRoute: NavigationRouteType {
    
    case books
    case addBook
    
    var navigationAction: NavigationAction {
        switch self {
        case .books:
            return NavigationAction.create(navigationType: .undefined) {
                let viewController = self.instantiateController(BooksViewController.self,
                                                                storyboardName: Storyboard.books,
                                                                viewModel: BooksViewModel())
                return NavigationController(rootViewController: viewController)
            }
        case .addBook:
            return NavigationAction.create(navigationType: .push) {
                let viewController = self.instantiateController(AddBookViewController.self,
                                                                storyboardName: Storyboard.books,
                                                                viewModel: AddBookViewModel())
                return viewController
            }
        }
    }
    
}
