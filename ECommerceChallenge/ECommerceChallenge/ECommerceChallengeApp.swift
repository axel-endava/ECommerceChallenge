//
//  ECommerceChallengeApp.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import SwiftUI

@main
struct ECommerceChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationManagerRootScreen(navigationManager: NavigationManager.shared)
        }
    }
}
