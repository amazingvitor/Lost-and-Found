//
//  TabsView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 1/30/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct TabsView: View {
    
    @State private var showModal = false
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house").font(.system(size: 18))
                    Text("Home")
            }
            ItensView()
                .tabItem {
                    Image(systemName: "tray").font(.system(size: 18))
                    Text("Itens")
            }
            
            AddView(title: "")
                .tabItem {
                    Image(systemName: "plus.circle").font(.title)
                    Text("Add")
            }
            
            MessagesView()
                .tabItem {
                    Image(systemName: "message").font(.system(size: 18))
                    Text("Messages")
            }
            MoreView()
                .tabItem {
                    Image(systemName: "gear").font(.system(size: 18))
                    Text("More")
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.defaultColor)
    }
    
    struct TabsView_Previews: PreviewProvider {
        static var previews: some View {
            TabsView()
        }
    }
}
