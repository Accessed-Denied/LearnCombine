//
//  Extensions.swift
//  LearnCombine
//
//  Created by Rohit Saini on 24/04/20.
//  Copyright © 2020 Accessed Denied. All rights reserved.
//

import Foundation
import Combine
import UIKit

extension URL:WithImage{
    func imagePublisher() -> AnyPublisher<UIImage?, Never> {
        URLSession.shared.dataTaskPublisher(for: self)
            .map({UIImage(data: $0.data)})
            .replaceError(with: nil)
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}

extension String: WithImage{
    func imagePublisher() -> AnyPublisher<UIImage?, Never> {
        if let url = URL(string: self),url.scheme == "https"{
            return url.imagePublisher()
        }
        return Just(UIImage(named: self))
            .eraseToAnyPublisher()
    }
}
