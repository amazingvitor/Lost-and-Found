//
//  MoreView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 1/30/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct MoreView: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        
        
        NavigationView {
            Form {
                Section {
                    NavigationLink(destination: Profile()) {
                        HStack {
                            CircleImage(image: "girl1")
                                .frame(width: 65, height: 65)
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Vitor Hugo")
                                    .font(.system(size: 20.0))
                                Text("Name, Email and Password")
                                    .font(.system(size: 10.0))
                                
                                
                            }
                            .padding(.vertical, 15.0)
                        }
                    }
                    
                }
                
                Section {
                    NavigationLink(destination: Text("Coming Soon")) {
                        HStack {
                            Image(systemName: "star")
                            Text("Valuable Itens")
                        }
                    }
                    HStack {
                        Image(systemName: "star")
                        Text("tba son")
                    }
                    HStack {
                        Image(systemName: "star")
                        Text("tba son")
                    }
                }
                Section {
                    NavigationLink(destination: Text("Coming Soon")) {
                        HStack {
                            Image(systemName: "bell")
                            Text("Notifications")
                        }
                    }
                    HStack {
                        Image(systemName: "star")
                        Text("tba son")
                    }
                    HStack {
                        Image(systemName: "star")
                        Text("tba son")
                    }
                    HStack {
                        Image(systemName: "star")
                        Text("tba son")
                    }
                    HStack {
                        Image(systemName: "star")
                        Text("tba son")
                    }
                }
                
                Section {
                    NavigationLink(destination: Text("Coming Soon")) {
                        HStack {
                            Image(systemName: "questionmark")
                            Text("Help")
                        }
                    }
                    NavigationLink(destination: Text("Coming Soon")) {
                        HStack {
                            Image(systemName: "person.badge.minus")
                            Text("Logout")
                        }
                    }
                }
                .navigationBarTitle(Text("More"))
            }
        }
    }
    struct MoreView_Previews: PreviewProvider {
        static var previews: some View {
            MoreView()
        }
    }
}
