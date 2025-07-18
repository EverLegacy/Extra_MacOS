//
//  BannerItem.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//

import SwiftUI

struct BannerItem: View {
    let banner: Banner

    var body: some View {
        ScrollView{
            HStack{
                ZStack {
                    Image(banner.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 123, height: 150)
                        .clipped()
                        .cornerRadius(15)
                    
                    Rectangle()
                        .foregroundColor(Color.green.opacity(0.5))
                        .cornerRadius(15)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Spacer()
                        
                        Text(banner.title)
                            .font(.system(size: 12))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: -5,y: -25)
                        
                        Text(banner.description)
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.8))
                            .offset(x: -5,y: -20)
                        
                        Spacer()
                        
                        Button {
                            print("Shop Now tapped")
                        } label: {
                            Text("Shop Now")
                                .font(.system(size: 8))
                                .bold()
                                .foregroundColor(Color("GreenB"))
                                .padding(.horizontal, 1)
                                .background(Color.white)
                            
                        }
                        .offset(y: -2)
                        .cornerRadius(6)
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                    }
                    .padding()
                }
                .frame(width: 123, height: 150)
            }
        }
    }
}

