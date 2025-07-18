//
//  ProductListView.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//


import SwiftUI




struct ProductListView: View {
    let products = [
        Product(name: "Strawberry", price: "$20.10", imageName: "strawberry"),
        Product(name: "Cabbage", price: "$15.10", imageName: "cabbage"),
        Product(name: "Brocoly", price: "$25.10", imageName: "brocoly"),
        Product(name: "Orenge", price: "$12.10", imageName: "orenge"),
        Product(name: "Fresh Apple", price: "$18.10", imageName: "freshapple")
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(products) { product in
                    ProductCard(product: product)
                }
            }
            .padding()
        }
    }
}
