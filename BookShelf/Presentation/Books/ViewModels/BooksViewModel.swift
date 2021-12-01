//
//  BooksViewModel.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM
import RxDataSources

class BooksViewModel: ViewModel {
    
    let bookItemViewModels = BehaviorRelay<[BookItemViewModel]>(value: [])
    lazy var bookItemSections = bookItemViewModels.map({ [SectionModel(model: String.empty, items: $0)] })
    
    let addBook = PublishSubject<Void>()
    let removeBook = PublishSubject<IndexPath>()
    let editBook = PublishSubject<IndexPath>()
    
    override init() {
        super.init()
        
        // TEMPORARY MOCK
        let books = Array(repeating: Book(author: "Aldous Huxley", title: "Brave new World"),
                          count: 50)
        bookItemViewModels.accept(books.map(BookItemViewModel.init))
        
        addBook.bind(onNext: {
            Navigator.navigate(route: BooksNavigationRoute.addBook)
        }).disposed(by: disposeBag)
        
        removeBook.bind(onNext: {_ in
            
        }).disposed(by: disposeBag)
        
        editBook.bind(onNext: {_ in
            
        }).disposed(by: disposeBag)
    }
    
}
