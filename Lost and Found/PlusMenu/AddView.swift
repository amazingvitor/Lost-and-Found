//
//  AddView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/10/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                ForEach(0 ..< 1) { item in
                    CardMini()
                    
                        .frame(width: UIScreen.main.bounds.width, height: 20)
                    
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
