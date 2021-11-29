//
//  LoginViewModel.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM

class LoginViewModel: ViewModel {
    
    let email = BehaviorRelay<String?>(value: nil)
    let password = BehaviorRelay<String?>(value: nil)
    
    let login = PublishSubject<Void>()
    let signUp = PublishSubject<Void>()
    
    override func subscribe() {
        
        signUp.bind(onNext: {
            Navigator.navigate(route: AuthorizationNavigationRoute.signUp)
        }).disposed(by: disposeBag)
        
        super.subscribe()
    }
    
}
