//
//  AddBookViewController.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM

class AddBookViewController: ViewController<AddBookViewModel> {
    
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var addBookButton: UIButton!
    
    override func bind(viewModel: ViewController<AddBookViewModel>.ViewModel) {
        
        authorTextField.rx.text.bind(to: viewModel.author).disposed(by: disposeBag)
        titleTextField.rx.text.bind(to: viewModel.title).disposed(by: disposeBag)
        
        super.bind(viewModel: viewModel)
    }
    
}
