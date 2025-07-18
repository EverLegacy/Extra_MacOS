//
//  TopBar.swift
//  Extra_MacOS
//
//  Created by Romel Ruiz on 7/18/25.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        
        
        
        
        
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("GreenB"))

            TextField("Search your grocery products etc...", text: .constant(""))
                .textFieldStyle(PlainTextFieldStyle())
                .font(.system(size: 10))

            Spacer()

            Image(systemName: "calendar")
                .foregroundColor(Color("GreenI"))

            Divider()
                .frame(width: 1, height: 28)
                .background(Color("GreenT"))
                .opacity(0.3)

            Image(systemName: "envelope.badge")
                .foregroundStyle(.red, Color("GreenI"))

            Divider()
                .frame(width: 1, height: 28)
                .background(Color("GreenT"))
                .opacity(0.3)

            Image(systemName: "bell.badge")
                .foregroundStyle(.red, Color("GreenI"))

            Divider()
                .frame(width: 1, height: 28)
                .background(Color("GreenT"))
                .opacity(0.3)

            Image("pfp")
                .resizable()
                .frame(width: 20, height: 20)
                .clipShape(Circle())

            Image(systemName: "arrowtriangle.down.fill")
                .foregroundColor(.gray)
                .font(.system(size: 3))
                .scaleEffect(x: 2, y: 1, anchor: .center)
        }
    }
}

#Preview {
    TopBar()
        .padding()
}
