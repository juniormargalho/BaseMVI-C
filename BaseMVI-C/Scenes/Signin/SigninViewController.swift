//
//  SigninViewController.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 29/03/23.
//

import UIKit

// MARK: Delegate
protocol SigninViewDelegate: AnyObject {
    func goToCreateAccount()
}

class SigninViewController: BaseSigninVC {
    // MARK: Properties
    weak var delegate: SigninViewDelegate?
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Signin"
    }
    
    override func render(_ viewState: SigninViewState) {
        switch viewState {
        case .initial:
            break
        case .loading(let isLoading):
            isLoading ? print("Loading...") : print("Loaded")
        case .successSignin(let greetingMessage):
            print(greetingMessage)
        case .errorSignin(let message):
            print(message)
        }
    }
}
