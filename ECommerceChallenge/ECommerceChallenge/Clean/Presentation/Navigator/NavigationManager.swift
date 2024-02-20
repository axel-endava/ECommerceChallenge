//
//  NavigationManager.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import Foundation

class NavigationManager: ObservableObject {
    @Published var state: NavigationManagerState

    static let shared = NavigationManager()

    init(initialState: NavigationManagerState = NavigationManagerState.initialState) {
        self.state = initialState
    }

    func navigate(navigationManagerDirection: NavigationManagerDirections) {
        state = state.clone(with: navigationManagerDirection)
    }
}
