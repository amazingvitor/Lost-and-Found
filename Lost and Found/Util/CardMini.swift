//
//  CardMini.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/9/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

// REMEMBER TO DECLARE THE .frame TO IMPLEMENT
struct CardMini: View {
    var body: some View {
        // MARK: Navigation to detail screen
        NavigationLink(destination: Text("eta son")) {
            // MARK: Card Format
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.defaultColor)
        }
    }
}


