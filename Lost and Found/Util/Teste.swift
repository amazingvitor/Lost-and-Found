//
//  Teste.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/10/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct Teste: View {
    
    var category: UIColor
    var itemPic: String
    var itemName: String
    var userName: String
    
    var body: some View {
        
        NavigationLink(destination: Text("eta son card")) {
            VStack(alignment: .leading) {
                
                
                
                VStack(spacing: 20) {
                    
                    // MARK: Item Pic
                    HStack( spacing: 10) {
                        Image(self.itemPic)
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 100, height: 100)
                            
                        
                        
                        
                        VStack(alignment: .leading) {
                            Text(self.itemName)
                                .font(.title)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            Text("50 minutes ago")
                                .font(.caption)
                            
                            Divider()
                            
                            Text("@\(self.userName)")
                                .font(.subheadline)
                        }
                    }
                    
                }
                
                Text("Found")
                .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                    .frame(width: 100)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.green, lineWidth: 2)
                )
            }
            .padding()
            .cornerRadius(10)
                // MARK: Card Format
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.secondarySystemFill), lineWidth: 2)
            )
                .padding([.bottom, .horizontal])
                .shadow(color: Color.black.opacity(0.2), radius: 10)
        }
            
        .buttonStyle(PlainButtonStyle())
    }
    
    // TODO: More info logic
    func logic() {
    }
}

struct Teste_Previews: PreviewProvider {
    static var previews: some View {
        Teste(category: .red, itemPic: "toy", itemName: "Carrinho", userName: "amazingvitor")
    } // Profile_Previews
} // PreviewProvider
