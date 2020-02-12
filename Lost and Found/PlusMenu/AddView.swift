//
//  AddView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/10/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct AddView: View {
    
    @State var title: String
    
    var body: some View {
        Form {
            Section {
                TextField("Title", text: $title)
                HStack {
                    Image(systemName: "star")
                    Text("tba son")
                }
                HStack {
                    Image(systemName: "star")
                    Text("tba son")
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(title: "")
    }
}
