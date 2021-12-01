//
//  BooksViewController.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM
import RxDataSources

class BooksViewController: ViewController<BooksViewModel>, UITableViewDelegate {
    
    @IBOutlet weak var addBookButton: UIBarButtonItem!
    @IBOutlet weak var booksTableView: UITableView!
    
    private let bookItemsDataSource: RxTableViewSectionedReloadDataSource<SectionModel<String, BookItemViewModel>> = TableViewConnector.reloadTableViewDataSource(BookTableViewCell.self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableViewConnector.register(BookTableViewCell.self,
                                    for: booksTableView)
        
        booksTableView.rx.setDelegate(self).disposed(by: disposeBag)
    }
    
    override func bind(viewModel: ViewController<BooksViewModel>.ViewModel) {
        
        addBookButton.rx.tap.bind(to: viewModel.addBook).disposed(by: disposeBag)
        
        viewModel.bookItemSections
            .bind(to: booksTableView.rx.items(dataSource: bookItemsDataSource))
            .disposed(by: disposeBag)
        
        super.bind(viewModel: viewModel)
    }
    
}
