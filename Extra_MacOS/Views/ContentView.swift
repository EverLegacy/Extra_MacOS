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
                    //Logo
                    Image("Logo")
                        .resizable()
                        .frame(width: 80, height: 25)
                        .padding(.top,7)
                        .offset(y: 10)
                    //Line under the logo
                    GeometryReader { geometry in
                        Rectangle()
                            .fill(Color("GreenL"))
                            .frame(width: geometry.size.width + 200, height: 1)
                            .offset(x: -32, y:10)
                    }
                    .frame(height: 1)
                }
                .frame(maxWidth: .infinity)
                
                
                
                
                //DashBoard and menus
                
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
            
            //Line going down the middel
            Rectangle()
                .fill(Color("GreenL"))
                .frame(width: 1)
                .frame(maxHeight: .infinity)
            
            
            
            
            
            
            //TopBar
            
            
            VStack(alignment: .leading, spacing:8){
                
                TopBar().padding(.top,7)
                
                GeometryReader { geometry in
                    Rectangle()
                        .fill(Color("GreenL"))
                        .frame(width: geometry.size.width + 2000, height: 1)
                        .offset(x: -32)
                    
                }
                .frame(height: 1)
                
                
                
                
                
                
                
                
                
                
                //Categories
                
                //Icons
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
                
            
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        CategoryItem(label: "Fruits", imageName: "fruits")
                        CategoryItem(label: "Bread", imageName: "bread")
                        CategoryItem(label: "Vegetable", imageName: "vegetable")
                        CategoryItem(label: "Fish", imageName: "fish")
                        CategoryItem(label: "Meat", imageName: "meat")
                        CategoryItem(label: "Drinks", imageName: "drinks")
                        CategoryItem(label: "Sea Food", imageName: "seafood")
                        CategoryItem(label: "Ice cream", imageName: "icecream")
                        CategoryItem(label: "Juice", imageName: "juice")
                        CategoryItem(label: "Jam", imageName: "jam")
                        
                    }
                    .padding(.horizontal, 6)
                }
                
                
                
                
                //Popular Products
                
                HStack{
                    Text("Popular Products")
                        .bold()
                        .font(.system(size: 14))
                    
                    Spacer()
                    
                    Text("View More")
                        .foregroundColor(Color("GreenB"))
                        .font(.system(size: 8))
                        .bold()
                }
                .padding(.horizontal, 6)
                .padding(.top, 10)
                .frame(alignment: .leading)
                
                ProductListView().offset(x: -10, y: -10)
                
                
                
                
                
                
                //Discount Shop
                
                
                //Heading for Discont SHop
                HStack (alignment: .top, spacing: 16) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Discount Shop")
                                .bold()
                                .font(.system(size: 14))
                                .padding(.horizontal, 6)
                                .offset(y: -15)
                            
                            Spacer()
                            
                            Text("View More")
                                .foregroundColor(Color("GreenB"))
                                .font(.system(size: 8))
                                .bold()
                                .offset(x: -5,y: -15)
                        }
                        
                        //BannerView
                        GeometryReader { geometry in
                            BannerView()
                                .frame(width: geometry.size.width + 20)
                                .offset(x: -10,y: -25)
                        }
                        .frame(height: 190)
                        
                    }
                    .frame(minWidth: 520)
                    .layoutPriority(1)
                    
                    
                    
                    VStack(alignment: .leading,spacing: 16) {
                        HStack{
                            Text("Last Order")
                                .bold()
                                .font(.system(size: 14))
                                .padding(.top,0)
                                .offset(x:7)
                        }
                        .frame(alignment: .leading)
                        .offset(y:-15)
                        
                        LastOrderView(orders: [
                            LastOrder(name: "Red Saffron", weight: "Weight 500gm", imageName: "redsaffron", price: "$150"),
                            LastOrder(name: "Friesh Apple", weight: "Weight 2kg", imageName: "frieshapple", price: "$120"),
                            LastOrder(name: "Big Fish", weight: "Weight 6kg", imageName: "bigfish", price: "$300")
                        ]).frame(width: 160)
                            .offset(x:5,y:-15)
                        
                    }
                    
                }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                
            }.offset(y: 10)
                .padding(13)
                .frame(maxWidth: .infinity,maxHeight:.infinity)
                .background(Color("Background"))
            }
        }
    }





    #Preview {
        ContentView()
        
    }

