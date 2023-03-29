//
//  AppCoordinator.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 29/03/23.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var child: Coordinator?
    
    init() {
        self.navigationController = UINavigationController()
    }
    
    func start() {
        let coordinator = SigninCoordinator(navigationController: navigationController)
        child = coordinator
        child?.start()
    }
}
