

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let category: String
}

let products = [
    Product(name: "Apple", category: "Fruits"),
    Product(name: "Banana", category: "Fruits"),
    Product(name: "Coconut", category: "Fruits"),
    Product(name: "Potato", category: "Vegetables"),
    Product(name: "Carrot", category: "Vegetables"),
    Product(name: "Onion", category: "Vegetables"),
    Product(name: "Milk", category: "Dairy"),
    Product(name: "Cheese", category: "Dairy")
]

var groupedProducts: [String: [Product]] {
    Dictionary(grouping: products) { $0.category }
}

struct SearchInCategoryView: View {
    
    @State private var searchText = ""

    var filteredProducts: [String: [Product]] {

        if searchText.isEmpty {
            return groupedProducts
        }

        var result: [String: [Product]] = [:]

        for (category, products) in groupedProducts {

            let filtered = products.filter {
                $0.name.localizedCaseInsensitiveContains(searchText)
            }

            if !filtered.isEmpty {
                result[category] = filtered
            }
        }

        return result
    }
    
    var body: some View {
        NavigationStack{
            List {

                ForEach(filteredProducts.keys.sorted(), id: \.self) { category in

                    Section(category) {

                        ForEach(filteredProducts[category] ?? []) { product in
                            Text(product.name)
                        }

                    }
                }
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)
            )
        }
    }
}





