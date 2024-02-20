//
//  SplashScreenViewModel.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import Combine
import Foundation

class SplashScreenViewModel: ObservableObject {
    @Published var state: SplashState

    var splashScreenServices: SplashScreenServicesProtocol
    private var cancelableSet: Set<AnyCancellable> = []
    static let defaultState = SplashState(shouldContinue: false)

    init(splashScreenServices: SplashScreenServicesProtocol = SplashScreenServices(),
         initialState: SplashState = defaultState) {
        self.splashScreenServices = splashScreenServices
        self.state = initialState
    }

    func onSplashInit() {
        splashScreenServices.shouldToWaitThreeSeconds()
        .sink(
            receiveValue: { _ in
                self.state = self.state.clone(withShouldContinue: true)
            }
        )
        .store(in: &cancelableSet)
    }
}
