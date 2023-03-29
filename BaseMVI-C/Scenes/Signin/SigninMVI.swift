//
//  SigninMVI.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 29/03/23.
//

import Foundation

enum SigninIntention: Intent {
    case signin
}

enum SigninMutation: Mutation {
    case loading(Bool)
    case successSignin(String)
    case errorSignin(String)
}

enum SigninViewState: ViewState {
    case initial
    case loading(Bool)
    case successSignin(String)
    case errorSignin(String)
}

typealias BaseSigninVM = BaseMVIViewModel<SigninIntention, SigninMutation, SigninViewState>
typealias BaseSigninVC = BaseMVIViewController<SigninIntention, SigninMutation, SigninViewState, SigninViewModel>
