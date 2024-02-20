//
//  NavigationManagerState.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import Foundation

struct NavigationManagerState {
    let navigationManagerDirection: NavigationManagerDirections

    func clone(with navigationManagerDirections: NavigationManagerDirections?) -> NavigationManagerState {
        return NavigationManagerState(navigationManagerDirection: navigationManagerDirections
                                      ?? self.navigationManagerDirection)
    }

    static let initialState = NavigationManagerState(navigationManagerDirection: .splashScreen)
}

enum NavigationManagerDirections {
    case splashScreen
    case productsListScreen
    case detailScreen
    case cartScreen
}
