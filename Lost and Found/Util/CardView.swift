//
//  CardView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/9/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var name: String
    var title: String
    var picture: String
    var profilePic: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // MARK: Profile Section
            HStack {
                CircleImage(image: profilePic)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.headline)
                    Text("50 minutes ago")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                }
                
            }
            
            Divider()
            
            // MARK: Item Pic
                        Image(self.picture)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                            .cornerRadius(10) 
            
            Divider()
            
            // MARK: Item Info
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                }
                .layoutPriority(100)
                Spacer()
            }
            
            // MARK: More info button
            NavigationLink(destination: Text("eta son")) {
                Text("See More")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .background(Color(UIColor(red:0.61, green:0.15, blue:0.69, alpha:1.0)))
                    .cornerRadius(10)
                
            }
        }
        .padding()
        .cornerRadius(10)
            // MARK: Card Format
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.secondarySystemFill), lineWidth: 1)
            
        )
            .padding([.bottom, .horizontal])
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
    }
    // TODO: More info logic
    func logic() {
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(name: "Vitor Hugo", title: "Hotwheels car", picture: "toy", profilePic: "vitor")
    } // Profile_Previews
} // PreviewProvider
