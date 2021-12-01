//
//  BookTableViewCell.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import UIKit
import RxSwift
import RxMVVM

class BookTableViewCell: TableViewCell<BookItemViewModel> {
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func bind(viewModel: BookItemViewModel) {
        
        viewModel.author.bind(to: authorLabel.rx.text).disposed(by: reusableDisposeBag)
        viewModel.title.bind(to: titleLabel.rx.text).disposed(by: reusableDisposeBag)
        
        super.bind(viewModel: viewModel)
    }
    
}
