//
//  SigninViewModel.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 29/03/23.
//

import Foundation

final class SigninViewModel: BaseSigninVM {
    // MARK: Properties
    fileprivate let provider: Result<String, Error>? = nil
    
    // MARK: Overrides
    override func mutate(with intent: SigninIntention) {
        switch intent {
        case .signin:
            signin()
        }
    }
    
    override func reduce(with prevState: SigninViewState, _ mutation: SigninMutation) -> SigninViewState {
        switch mutation {
        case .loading(let isLoading):
            return .loading(isLoading)
        case .successSignin(let greetingMessage):
            return .successSignin(greetingMessage)
        case .errorSignin(let message):
            return .errorSignin(message)
        }
    }
    
    // MARK: Methods
    private func signin() {
        emit(.loading(true))
        switch provider {
        case .success(let greetingMessage):
            emit(.loading(false))
            emit(.successSignin(greetingMessage))
        case .failure(let error):
            emit(.loading(false))
            emit(.errorSignin(error.localizedDescription))
        case .none:
            break
        }
    }
}
