//
//  SignUpViewModel.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM

class SignUpViewModel: ViewModel {
    
    let email = BehaviorRelay<String?>(value: nil)
    let password = BehaviorRelay<String?>(value: nil)
    let repeatedPassword = BehaviorRelay<String?>(value: nil)
    
    let signUp = PublishSubject<Void>()
    
    override func subscribe() {
        
        super.subscribe()
    }
    
}
