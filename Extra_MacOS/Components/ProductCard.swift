//
//  ProductCard.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//




import SwiftUI

struct ProductCard: View {
    let product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading, spacing: 10) {
                Image(product.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 75)
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Text("Lorem ipsum dolor sit amet,")
                    .font(.system(size: 8))
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .padding(.horizontal,-9)
                    .padding(.vertical,-4)
                
                HStack(spacing: 0) {
                   
                        Text(product.price)
                            .font(.system(size: 13))
                            .foregroundColor(Color("GreenB"))
                            .bold()
                            .padding(.horizontal,-9)
                            .padding(.vertical,-4)
                            .padding(.bottom,-10)
                        
                        Text("/pre kg")
                            .font(.system(size: 7))
                            .foregroundColor(Color.gray)
                            .padding(.top, 2)
                            .padding(.horizontal,9)
                            .padding(.vertical,4)
                            .padding(.bottom,-10)
                    
                    
                    
                    Spacer()
                    
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 17, height: 17)
                        .foregroundColor(Color("GreenB"))
                        .padding(.vertical, 1)
                        .padding(.horizontal,-10)
                        .padding(.bottom,-10)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
            .frame(width: 131)
            
            // Red Heart
            Group {
                if product.name == "Strawberry" {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.red, Color("HeartB"))
                } else {
                    Image(systemName: "suit.heart")
                        .resizable()
                        .frame(width: 11, height: 10)
                        .padding(6)
                        .foregroundColor(.red)
                        .background(
                            Circle()
                                .fill(Color("2HeartB"))
                                .frame(width: 20, height: 20)
                        )
                }
            }
            .padding(10)
        }
    }
}
