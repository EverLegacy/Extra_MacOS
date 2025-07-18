//
//  ContentView.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack(spacing: 0){
            
            VStack(alignment: .leading, spacing: 10){
                
                VStack{
                    
                    Image("Logo")
                        .resizable()
                        .frame(width: 80, height: 25)
                        .padding(.top,7)
                        .offset(y: 10)
                    
                    GeometryReader { geometry in
                        Rectangle()
                            .fill(Color("GreenL"))
                            .frame(width: geometry.size.width + 200, height: 1)
                            .offset(x: -32, y:10)
                    }
                    .frame(height: 1)
                }
                .frame(maxWidth: .infinity)
                
                MenuButton(icon: "rectangle.grid.2x2.fill", label: "Dashboard", foregroundColor: .white, backgroundColor: Color("GreenB"))
                    .padding(.top, 7)
                    .offset(y: 10)
                
                MenuButton(icon: "chart.pie.fill", label: "Categories", foregroundColor: Color("GreenI"))
                
                MenuButton(icon: "heart.fill", label: "Favourite", foregroundColor: Color("GreenI"))
                
                MenuButton(icon: "cart.fill", label: "Orders", foregroundColor: Color("GreenI"))
                
                MenuButton(icon: "ellipsis.message.fill", label: "Messages", foregroundColor: Color("GreenI"))
                
                MenuButton(icon: "cube.fill", label: "Top Deals", foregroundColor: Color("GreenI"))
                
                MenuButton(icon: "gearshape.fill", label: "Settings", foregroundColor: Color("GreenI"))
                
                Spacer()
                
            }
            .padding()
            .padding(.horizontal,8)
            .frame(width: 200)
            .background(Color.white)
            .buttonStyle(PlainButtonStyle())
            
            
            Rectangle()
                .fill(Color("GreenL"))
                .frame(width: 1)
                .frame(maxHeight: .infinity)
            
            VStack(alignment: .leading, spacing:8){
                
                TopBar().padding(.top,7)
                
                GeometryReader { geometry in
                    Rectangle()
                        .fill(Color("GreenL"))
                        .frame(width: geometry.size.width + 2000, height: 1)
                        .offset(x: -32)
                }
                .frame(height: 1)
                Spacer()
            }
            .offset(y: 10)
                .padding(13)
                .frame(maxWidth: .infinity,maxHeight:.infinity)
                .background(Color("Background"))
            
            
            
            
            HStack(spacing: 5) {
                Text("Categories")
                    .bold()
                    .font(.system(size: 14))
                
                Spacer()
                
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(Color("GreenB"))
                Image(systemName: "chevron.backward.circle.fill")
                    .foregroundColor(Color("GreenB"))
                Image(systemName: "chevron.forward.circle.fill")
                    .foregroundColor(Color("GreenB"))
            }
            .padding(.horizontal, 6)
            .padding(.top, 14)
            .frame(alignment: .leading)
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        
            
            }
        }
    }
#Preview {
    ContentView()
    
}


