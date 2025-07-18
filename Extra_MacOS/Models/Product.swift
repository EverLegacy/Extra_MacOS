//
//  Product.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//




import SwiftUI

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let imageName: String
    var isFavorite: Bool = false
}
