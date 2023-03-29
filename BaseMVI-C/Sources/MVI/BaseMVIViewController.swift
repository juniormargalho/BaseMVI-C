//
//  BaseMVIViewController.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 20/03/23.
//

import UIKit
import RxSwift

class BaseMVIViewController<I: Intent, M: Mutation, VS: ViewState, VM: BaseMVIViewModel<I, M, VS>>: UIViewController {
}
