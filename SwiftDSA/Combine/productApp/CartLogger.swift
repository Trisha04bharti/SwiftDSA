//
//  CartLogger.swift
//  SwiftDSA
//
//  Created by Vikram on 09/07/26.
//

import Foundation
import Combine

class CartLogger {

    private var cancellables = Set<AnyCancellable>()

    init(viewModel: CartViewModel) {

        viewModel.$cartItems
            .sink { items in
                print("Cart Updated:", items)
            }
            .store(in: &cancellables)
    }
}
