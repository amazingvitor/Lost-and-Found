//
//  TabsView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 1/30/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct TabsView: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house").font(.system(size: 18))
                    Text("Home")
            }
            ItensView()
                .tabItem {
                    Image(systemName: "tray").font(.headline)
                    Text("Itens")
            }
            AddView(title: "")
                .tabItem {
                    Image(systemName: "plus.circle").font(.title)
                    Text("Add")
            }
            
            MessagesView()
                .tabItem {
                    Image(systemName: "message").font(.headline)
                    Text("Messages")
            }
            MoreView()
                .tabItem {
                    Image(systemName: "gear").font(.headline)
                    Text("More")
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    struct TabsView_Previews: PreviewProvider {
        static var previews: some View {
            TabsView()
        }
    }
}
