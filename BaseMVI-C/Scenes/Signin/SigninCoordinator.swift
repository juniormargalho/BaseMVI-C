//
//  SigninCoordinator.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 29/03/23.
//

import UIKit

class SigninCoordinator: Coordinator {
    var navigationController: UINavigationController
    var child: Coordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = SigninViewController()
        viewController.delegate = self
        navigationController.pushViewController(viewController, animated: true)
    }
}

extension SigninCoordinator: SigninViewDelegate {
    func goToCreateAccount() {
        // TODO: CreateAccountCoordinator
    }
}
