//
//  NavigationManagerRootScreen.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import SwiftUI

struct NavigationManagerRootScreen: View {

    @State var shouldShowSplashScreen: Bool = false
    @State var shouldShowProductsScreen: Bool = false
    @StateObject var navigationManager: NavigationManager

    init(navigationManager: NavigationManager) {
          self._navigationManager = StateObject(wrappedValue: navigationManager)
    }

    var body: some View {
        NavigationStack {
            ZStack {}
            .navigationDestination(isPresented: $shouldShowSplashScreen) {
                SplashScreenView()
                    .navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
            }
            .navigationDestination(isPresented: $shouldShowProductsScreen) {
                ProductsScreen()
                    .navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
            }
        }
        .onReceive(navigationManager.$state) { state in
            shouldShowSplashScreen = state.navigationManagerDirection == .splashScreen
            shouldShowProductsScreen = state.navigationManagerDirection == .productsListScreen
        }
    }
}

struct NavigationManagerRootScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationManagerRootScreen(navigationManager: NavigationManager(initialState:
            NavigationManagerState.initialState.clone(with: .splashScreen)))
        NavigationManagerRootScreen(navigationManager:
                NavigationManager(initialState:
            NavigationManagerState.initialState.clone(with: .productsListScreen)))
    }

}
