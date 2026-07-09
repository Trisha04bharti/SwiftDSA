//
//  CartViewModel.swift
//  SwiftDSA
//
//  Created by Vikram on 09/07/26.
//

import Foundation
import Combine

class CartViewModel: ObservableObject {

    @Published var cartItems: [String] = []

    func addItem(_ item: String) {
        cartItems.append(item)
    }
}
