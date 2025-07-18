//
//  BannerView.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//


import SwiftUI

struct BannerView: View {
    let banners = [
        Banner(imageName: "promo1", title: "35% Discount", description: "Order any food from app and get the discount"),
        Banner(imageName: "promo2", title: "20% Discount", description: "Order any food from app and get the discount"),
        Banner(imageName: "promo3", title: "20% Discount", description: "Order any food from app and get the discount"),
        Banner(imageName: "promo4", title: "10% Discount", description: "Order any food from app and get the discount")
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(banners, id: \.title) { banner in
                    BannerItem(banner: banner)
                }
            }
            .cornerRadius(15)
            .padding()
        }
    }
}
#Preview {
    BannerView()
}
