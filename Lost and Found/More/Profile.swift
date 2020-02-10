//
//  Profile.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 29/12/19.
//  Copyright © 2019 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 150)
            
            CircleImage(image: "girl1")
                .frame(width: 175, height: 175)
                .offset(y: -75)
                .padding(.bottom, -50)
            
            VStack(alignment: .leading) {
                Text("Vitor Hugo")
                    .font(.title)
                HStack {
                    Text("Computer Science Student")
                        .font(.subheadline)
                    Spacer()
                    Text("São Paulo")
                        .font(.subheadline)
                } // HStack
                Divider()
            } // VStack
                .padding()
            Spacer()
        } // VStack
    } // Body
} // Profile

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    } // Profile_Previews
} // PreviewProvider
