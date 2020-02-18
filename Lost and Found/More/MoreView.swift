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
                            IconLayout(iconImage: "star", rectangleFill: .systemGreen)
                            Text("Valuable Itens")
                        }
                    }
                    
                    HStack {
                        IconLayout(iconImage: "star", rectangleFill: .systemOrange)
                        Text("eta son")
                    }
                    
                    HStack {
                        IconLayout(iconImage: "star", rectangleFill: .systemOrange)
                        Text("eta son")
                    }
                }
                Section {
                    NavigationLink(destination: Text("Coming Soon")) {
                        HStack {
                            IconLayout(iconImage: "bell", rectangleFill: .systemBlue)
                            Text("Notifications")
                        }
                    }
                    
                    HStack {
                        IconLayout(iconImage: "lock", rectangleFill: .gray)
                        Text("Privacy and Security")
                    }
                    
                    HStack {
                        IconLayout(iconImage: "globe", rectangleFill: .orange)
                        Text("Language")
                    }
                    
                    HStack {
                        IconLayout(iconImage: "star", rectangleFill: .systemPink)
                        Text("eta son")
                    }
                    
                    HStack {
                        IconLayout(iconImage: "star", rectangleFill: .systemPink)
                        Text("eta son")
                    }
                }
                
                Section {
                    NavigationLink(destination: Text("Coming Soon")) {
                        HStack {
                            IconLayout(iconImage: "heart", rectangleFill: .systemRed)
                            Text("Tell a Friend")
                        }
                    }
                    
                    NavigationLink(destination: Text("Coming Soon")) {
                        HStack {
                            IconLayout(iconImage: "info", rectangleFill: .systemBlue)
                            Text("Help")
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


