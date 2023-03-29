//
//  BaseMVIViewController.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 20/03/23.
//

import RxSwift
import RxCocoa
import Resolver
import RxOptional

class BaseMVIViewController<I: Intent, M: Mutation, VS: ViewState, VM: BaseMVIViewModel<I, M, VS>>: UIViewController {
    private let disposeBag: DisposeBag = .init()
    let viewModel: VM = Resolver.resolve()
    
    func mutate(_ intention: I) {
        viewModel.intent.on(.next(intention))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewState
            .map {
                Optional($0)
            }
            .asDriver(onErrorJustReturn: nil)
            .filterNil()
            .drive(onNext: (render))
            .disposed(by: disposeBag)
    }
    
    open func render(_ viewState: VS) {
        fatalError("render() must be overridden in concrete implementations of ViewController")
    }
}
