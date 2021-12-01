//
//  AddBookViewModel.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM

class AddBookViewModel: ViewModel {
    
    let title = BehaviorRelay<String?>(value: nil)
    var author = BehaviorRelay<String?>(value: nil)
    
    var addBook = PublishSubject<Void>()
    
    override func subscribe() {
        
        super.subscribe()
    }
    
}
