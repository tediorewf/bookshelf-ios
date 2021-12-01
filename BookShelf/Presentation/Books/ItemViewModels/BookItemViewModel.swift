//
//  BookItemViewModel.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM

class BookItemViewModel: ViewModel {
    
    let book: Book
    
    lazy var author = Observable.just(book.author)
    lazy var title = Observable.just(book.title)
    
    init(book: Book) {
        self.book = book
    }
    
}
