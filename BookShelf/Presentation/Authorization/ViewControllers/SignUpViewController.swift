//
//  SignUpViewController.swift
//  BookShelf
//
//  Created by Mikhail Eremeev on 29.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import RxMVVM

class SignUpViewController: ViewController<SignUpViewModel> {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatedPasswordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func bind(viewModel: ViewController<SignUpViewModel>.ViewModel) {
        
        emailTextField.rx.text.bind(to: viewModel.email).disposed(by: disposeBag)
        passwordTextField.rx.text.bind(to: viewModel.password).disposed(by: disposeBag)
        repeatedPasswordTextField.rx.text.bind(to: viewModel.repeatedPassword).disposed(by: disposeBag)
        signUpButton.rx.tap.bind(to: viewModel.signUp).disposed(by: disposeBag)
        
        super.bind(viewModel: viewModel)
    }
    
}
