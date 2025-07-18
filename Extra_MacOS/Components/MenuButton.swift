//
//  MenuButton.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//



import SwiftUI

struct MenuButton : View {
    var icon : String
    var label : String
    var foregroundColor: Color = Color("GreenI")
    var backgroundColor: Color = .clear
    var body: some View {
        Button(action:{
            print("\(label) pressed")
        }){
            HStack{
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 15,height: 15)
                Text(label)
            }
            .foregroundColor(foregroundColor)
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(backgroundColor)
            .cornerRadius(6)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    MenuButton(icon: "house", label: "Dashboard")
}

