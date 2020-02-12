//
//  Teste.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/10/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct Teste: View {
    
    var picture: String
    var lfColor: UIColor
    var buttonDesc: String
    
    var body: some View {
        
        HStack {
            
            Rectangle()
                .frame(width: 10, height: 175)
                .foregroundColor(.green)
                .cornerRadius(10)
            
            VStack(spacing: 20) {
                
                // MARK: Item Pic
                HStack( spacing: 10) {
                    
                    
                    
                    NavigationLink(destination: Text("eta son card")) {
                        Image(self.picture)
                            .renderingMode(.original)
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 100, height: 100)
                        
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Hot Wheelsabl")
                            .font(.title)
                            .fontWeight(.bold)
                            .lineLimit(1)
                        
                        Text("50 minutes ago")
                            .font(.caption)
                            .padding(.bottom)
                        
                        
                        Text("@AmazingVitor")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                }
                
                // MARK: More info button
                NavigationLink(destination: Text("eta son")) {
                    Text(buttonDesc)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .background(Color(UIColor(red:0.61, green:0.15, blue:0.69, alpha:1.0)))
                        .cornerRadius(10)
                    
                }
            }
        }
        .padding()
        .cornerRadius(10)
            // MARK: Card Format
            .overlay(
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(lfColor), lineWidth: 2)
        )
            .padding([.bottom, .horizontal])
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
    }
    
    // TODO: More info logic
    func logic() {
    }
}

struct Teste_Previews: PreviewProvider {
    static var previews: some View {
        Teste(picture: "toy", lfColor: .secondarySystemFill, buttonDesc: "See More")
    } // Profile_Previews
} // PreviewProvider
