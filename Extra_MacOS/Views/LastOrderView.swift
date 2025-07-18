//
//  LastOrderView.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//
import SwiftUI




struct LastOrderView: View {
    let orders: [LastOrder]

    var body: some View {
        
        VStack(alignment: .leading, spacing: 12) {
            ForEach(Array(orders.enumerated()), id: \.element.id) { index, order in
                
                HStack(spacing: 12) {
                    
                    Image(order.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .clipShape(Circle())
                        .shadow(radius: 2)
    
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(order.name)
                                .font(.system(size: 10, weight: .semibold))
                                .foregroundColor(.black)
                            HStack{
                                Text(order.weight)
                                    .font(.system(size: 7))
                                    .foregroundColor(.gray)
                                
                                Spacer()
                                Text(order.price)
                                    .font(.system(size: 7, weight: .bold))
                                    .foregroundColor(Color("GreenB"))
                                    
                            }
                            HStack{
                                Image(systemName: "minus.circle.fill")
                                    .resizable()
                                    .frame(width: 7, height: 7)
                                    .foregroundColor(Color("GreenB"))
                                
                                Text("1")
                                    .font(.system(size: 7))
                                    .foregroundColor(Color("GreenB"))
                                
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 7, height: 7)
                                    .foregroundColor(Color("GreenB"))
                                
                                
                                
                                
                            }
                            
                        
                    }
                    
                   
                    
                    
                }
                
                if index < orders.count - 1 {
                    GeometryReader { geometry in
                        Rectangle()
                            .fill(Color("GreenL"))
                            .frame(height: 0.5)
                            .offset(x: -20)
                            .frame(width: geometry.size.width + 100, height: 1)
                    }}
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
#Preview {
    LastOrderView(orders: [
        LastOrder(name: "Strawberries", weight: "1kg", imageName: "strawberry", price: "$3.99"),
        LastOrder(name: "Bananas", weight: "1.5kg", imageName: "banana", price: "$2.50"),
        LastOrder(name: "Avocados", weight: "0.5kg", imageName: "avocado", price: "$4.00")
    ])
}
