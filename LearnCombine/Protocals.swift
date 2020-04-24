//
//  Protocals.swift
//  LearnCombine
//
//  Created by Rohit Saini on 24/04/20.
//  Copyright © 2020 Accessed Denied. All rights reserved.
//

import Foundation
import Combine
import UIKit

protocol WithImage{
    func imagePublisher() -> AnyPublisher<UIImage?,Never>
}
