//
//  productHomeView.swift
//  SwiftDSA
//
//  Created by Vikram on 09/07/26.
//

import SwiftUI

struct ProductHomeView: View {

    @EnvironmentObject var vm: CartViewModel

    var body: some View {

        NavigationStack {

            VStack(spacing: 30) {

                NavigationLink("Go To Products") {
                    ProductView()
                }

                NavigationLink("Go To Cart") {
                    CartView()
                }

                NavigationLink("Go To Badge") {
                    BadgeView()
                }
            }
            .navigationTitle("Shopping App")
        }
    }
}

#Preview {
    ProductHomeView()
}
