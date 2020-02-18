//
//  Teste.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/10/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    // Item Description
    @State var itemPic: String
    @State var itemName: String
    @State var itemTime: String // Later u have to change to Date
    @State var itemUser: String
    // stateType = Lost or Found; stateColor = Red to Lost and Green to Found
    @State var stateType: String
    @State var stateColor: UIColor
    
    var body: some View {
        
        // MARK: Navigation to datail screen
        NavigationLink(destination: Text("eta son card")) {
            VStack(alignment: .leading) {
                
                VStack(spacing: 20) {
                    
                    // MARK: Item Pic
                    HStack( spacing: 10) {
                        Image(self.itemPic)
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 100, height: 100)
                        
                        // MARK: Item Name
                        VStack(alignment: .leading) {
                            Text(self.itemName)
                                .font(.title)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            // MARK: Item Time
                            Text(itemTime)
                                .font(.caption)
                            
                            Divider()
                            
                            // MARK: Item User
                            Text("@\(self.itemUser)")
                                .font(.subheadline)
                        }
                    }
                }
                
                // MARK: Item State
                Text(self.stateType)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color(stateColor))
                    .frame(width: 100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(stateColor), lineWidth: 2)
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
    
    // MARK: TODO: More info logic
    func logic() {
    }
}
// MARK: SwiftUI Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(itemPic: "toy", itemName: "Hot Wheels", itemTime: "1 hour ago", itemUser: "@Amazingvitor", stateType: "Found", stateColor: .green)
    }
}
