//
//  CategoryItem.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//


import SwiftUI

struct CategoryItem: View {
    let label: String
    var imageName: String
    var body: some View {
        VStack{
            VStack(spacing: 8) {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.top,4)
                
                Text(label)
                    .font(.caption)
                    .foregroundColor(.black)
                    .padding(.bottom,4)
                
            }
            
            
        }
        .clipShape(Rectangle())
        .frame(width: 63, height: 80)
        .background(Color.white)
        .cornerRadius(10)
    }
    
}

