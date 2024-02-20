//
//  SplashScreen.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import SwiftUI
import Combine

struct SplashScreenView: View {
    @ObservedObject var viewModel: SplashScreenViewModel

    init(viewModel: SplashScreenViewModel = SplashScreenViewModel()) {
       self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("SP-TITLE")
        }
        .onAppear {
            viewModel.onSplashInit()
        }
        .onReceive(viewModel.$state) { state in
            if state.shouldContinue {
                NavigationManager.shared
                    .navigate(navigationManagerDirection: .productsListScreen)
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
