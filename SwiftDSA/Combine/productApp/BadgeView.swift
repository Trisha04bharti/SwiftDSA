//
//  BadgeView.swift
//  SwiftDSA
//
//  Created by Vikram on 09/07/26.
//

import SwiftUI

struct BadgeView: View {

    @EnvironmentObject var vm: CartViewModel

    var body: some View {

        VStack {

            Text("Cart Badge")
                .font(.title)

            Text("Items : \(vm.cartItems.count)")
                .font(.largeTitle)
        }
    }
}
