//
//  Register.swift
//  BaseMVI-C
//
//  Created by Junior Margalho on 29/03/23.
//

import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        register {
            SigninViewModel(with: .initial)
        }
    }
}
