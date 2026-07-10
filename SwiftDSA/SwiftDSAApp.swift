//
//  SwiftDSAApp.swift
//  SwiftDSA
//
//  Created by Vikram on 04/07/26.
//

import SwiftUI

@main
struct ShoppingCartApp: App {

    @StateObject var vm = CartViewModel()

    let logger: CartLogger

    init() {

        let viewModel = CartViewModel()

        _vm = StateObject(wrappedValue: viewModel)

        logger = CartLogger(viewModel: viewModel)
    }

    var body: some Scene {

        WindowGroup {

        ProductHomeView()
                .environmentObject(vm)
        }
    }
}
