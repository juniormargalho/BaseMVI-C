//
//  Coordinator.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 29/03/23.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var child: Coordinator? { get set }
    
    func start()
}
