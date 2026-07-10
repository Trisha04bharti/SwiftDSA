//
//  CartView..swift
//  SwiftDSA
//
//  Created by Vikram on 09/07/26.
//

import SwiftUI

struct CartView: View {

    @EnvironmentObject var vm: CartViewModel

    var body: some View {

        VStack {

            Text("Cart")
                .font(.title)

            List(vm.cartItems, id: \.self) { item in
                Text(item)
            }
        }
    }
}
