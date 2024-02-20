//
//  SplashState.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import Foundation

struct SplashState {
    let shouldContinue: Bool

    func clone(withShouldContinue: Bool? = nil) -> SplashState {
        return SplashState(shouldContinue: withShouldContinue ?? self.shouldContinue)
    }
}
