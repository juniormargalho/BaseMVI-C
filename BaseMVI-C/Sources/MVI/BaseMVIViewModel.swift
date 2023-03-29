//
//  BaseMVIViewModel.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 20/03/23.
//

import RxSwift
import RxCocoa

class BaseMVIViewModel<I: Intent, M: Mutation, VS: ViewState> {
    private let disposeBag: DisposeBag = .init()
    fileprivate let mutationSubject = PublishSubject<M>()
    fileprivate let stateSubject: BehaviorSubject<VS>
    
    lazy var viewState: Observable<VS> = {
        return self.stateSubject.asObservable()
    }()
    
    var intent: Binder<I> {
        return .init(self) { base, intent in
            base.mutate(with: intent)
        }
    }
    
    init(with initialState: VS) {
        self.stateSubject = BehaviorSubject(value: initialState)
        mutationSubject
            .scan(initialState) { [unowned self] previousViewState, mutation in
                self.reduce(with: previousViewState, mutation)
            }
            .bind(to: stateSubject)
            .disposed(by: disposeBag)
    }
    
    func emit(_ mutation: M) {
        mutationSubject.onNext(mutation)
    }
    
    open func mutate(with intent: I) {
        fatalError("mutate(with intent: Intent) must be overridden in concrete implementations of ViewModel")
    }

    open func reduce(with prevState: VS, _ mutation: M) -> VS {
        fatalError("reduce(with previousViewState: ViewState, _ mutation: Mutation) must be overridden in concrete implementations of ViewModel")
    }
}
