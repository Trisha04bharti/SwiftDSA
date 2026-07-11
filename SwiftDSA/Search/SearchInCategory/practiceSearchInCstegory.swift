//
//  practiceSearchInCstegory.swift
//  SwiftDSA
//
//  Created by Vikram on 11/07/26.
//

import SwiftUI




struct SearchView: View {
    
    var productDic: [String: [String]] = [:]
   @State var searchText: String = ""
    init() {
        
//        productDic["Fruits"] = ["Apple", "Banana", "Orange", "Mango"]
//        productDic["vegetable"] = ["Carrot", "Potato", "Tomato", "Onion"]
//        productDic["dairy"] = ["milk", "milkiybar", "cheese", "yogurt", "cheeseCake"]
        
        productDic = [
                  "Fruits": ["Apple", "Banana", "Orange", "Mango"],
                  "Vegetable": ["Carrot", "Potato", "Tomato", "Onion"],
                  "Dairy": ["Milk", "Milkybar", "Cheese", "Yogurt", "CheeseCake"]
              ]
        
    }
    
    var filterDicProduct: [String: [String]] {
        if searchText.isEmpty {
            return productDic
        }
        else {
            
            var result: [String:[String]] = [:]
            
            for (key, value) in productDic {
                var curr =  value.filter {
                    $0.localizedCaseInsensitiveContains(searchText)
                }
                if !curr.isEmpty {
                    result[key] = curr
                }
            }
            return result
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                List(filterDicProduct.keys.sorted(), id: \.self){ key in
                    Section(key){
                        ForEach(filterDicProduct[key] ?? [], id: \.self) { item in
                            Text(item)
                        }
                    }
                }
                .navigationTitle("Amazon")
                .searchable(text: $searchText,
                            placement: .navigationBarDrawer(displayMode: .always)
                )
            }
        }
    }
    
}

#Preview {
    SearchView()
}
