//
//  HomeView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 1/30/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                // MARK: Search and filter
                TopBar()
                
                // MARK: New Itens Section
                Text("New Itens")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                CardView(itemPic: "toy", itemName: "HotWheels", itemTime: "1 Hour ago", itemUser: "Amazingvitor", stateType: "Found", stateColor: .systemGreen)
                CardView(itemPic: "bear", itemName: "Toy Bear", itemTime: "10 Minutes ago", itemUser: "Amazingvitor", stateType: "Lost", stateColor: .systemRed)
            }
                // Navbar modifiers
                .navigationBarTitle("Feed")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
