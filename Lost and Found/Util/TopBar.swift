//
//  SearchBar.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/9/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI
import Firebase

struct TopBar: View {
    
    @State var search: String = ""
    @State var showingAlert = false
    
    var body: some View {
        HStack {
            // MARK: Search Bar
            ZStack {
                Rectangle()
                    .foregroundColor(Color(.systemGray5))
                    .cornerRadius(10)
                    .frame(height: 50)
                
                HStack {
                    TextField("Search Here!", text: $search)
                    
                    // MARK: Search Button
                    Button(action: searchLogic) {
                        Image(systemName: "magnifyingglass")
                            .font(Font.system(size: 15).weight(.bold))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.defaultColor)
                            .cornerRadius(10)
                    }
                    
                    
                }
                .padding()
            }
            // MARK: Filter Button
            Button(action: filterLogic) {
                Image(systemName: "line.horizontal.3.decrease")
                    .font(Font.system(size: 15).weight(.bold))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.defaultColor)
                    .cornerRadius(10)
            }
            .alert(isPresented: self.$showingAlert) { () -> Alert in
                Alert.init(title: Text("wen eta"), message: Text("son"), dismissButton: .default(Text("...")))
            }
        }
        .padding(15)
        
    }
    
    // TODO: Filter
    func filterLogic() {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            self.showingAlert = true
            print("Sucesso")
            print("USERRRRRR: \((Auth.auth().currentUser)!)")
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
    }
    // TODO: Filter
    func searchLogic() {
        
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
