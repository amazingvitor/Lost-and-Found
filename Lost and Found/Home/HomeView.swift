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
                // MARK: Recent Section
                VStack {
                    Text("Recent")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0 ..< 5) { item in
                                CardMini()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading)
                                    .padding(.bottom)
                            }
                        }
                    }
                    .frame(height: 150)
                }
                // MARK: New Itens Section
                Text("New Itens")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                CardView(name: "Vitor", title: "do u like my car", picture: "toy", profilePic: "vitor")
                CardView(name: "Vitor", title: "do u like my car", picture: "toy", profilePic: "vitor")
            }
                // Navbar modifiers
                .navigationBarTitle("Feed")
                .navigationBarHidden(true)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
