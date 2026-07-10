//
//  ProductView..swift
//  SwiftDSA
//
//  Created by Vikram on 09/07/26.
//

import SwiftUI

struct ProductView: View {

    @EnvironmentObject var vm: CartViewModel

    var body: some View {

        VStack(spacing: 20) {

            Text("Products")
                .font(.title)

            Button("Add iPhone") {
                vm.addItem("iPhone")
            }

            Button("Add MacBook") {
                vm.addItem("MacBook")
            }

            Button("Add AirPods") {
                vm.addItem("AirPods")
            }
        }
        .padding()
    }
}
