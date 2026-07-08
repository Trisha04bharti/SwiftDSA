//
//  StarRating.swift
//  SwiftDSA
//
//  Created by Vikram on 08/07/26.
//

import SwiftUI

struct ContentView1: View {

    @State private var rating = 0

    var body: some View {

        VStack(spacing: 30) {

            Text("Rate Us")
                .font(.largeTitle)

            HStack(spacing: 12) {

                ForEach(1...5, id: \.self) { star in

                    Image(systemName: star <= rating ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(star <= rating ? .yellow : .gray)
                        .onTapGesture {
                            rating = star
                        }
                }
            }

            Text("Rating: \(rating)/5")
                .font(.title2)

        }
        .padding()
    }
}

import SwiftUI

struct ContentView2: View {

    let images = [
        "house.fill",
        "car.fill",
        "airplane",
        "heart.fill",
        "star.fill"
    ]

    @State private var currentPage = 0

    var body: some View {

        VStack {

            TabView(selection: $currentPage) {

                ForEach(images.indices, id: \.self) { index in

                    Image(systemName: images[index])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.blue)
                        .tag(index)
                }
            }
            .frame(height: 250)
            .tabViewStyle(.page(indexDisplayMode: .automatic))

            Text("Current Page: \(currentPage + 1)")
                .font(.title2)
                .padding()

        }
    }
}

#Preview {
    ContentView2()
}

//#Preview {
//    ContentView1()
//}
