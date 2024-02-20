//
//  SplashScreenServices.swift
//  ECommerceChallenge
//
//  Created by Axel Mosiejko on 16/01/2024.
//

import Combine
import Foundation

protocol SplashScreenServicesProtocol {
    func shouldToWaitThreeSeconds () -> AnyPublisher<Void, Never>
}

struct SplashScreenServices: SplashScreenServicesProtocol {

    func shouldToWaitThreeSeconds () -> AnyPublisher<Void, Never> {
        Just(())
            .delay(for: 3.0, scheduler: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
