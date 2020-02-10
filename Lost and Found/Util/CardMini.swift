//
//  CardMini.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/9/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct CardMini: View {
    var body: some View {
        // MARK: Recent Card
        NavigationLink(destination: Text("eta son")) {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(UIColor(red:0.61, green:0.15, blue:0.69, alpha:1.0)))
        }
    }
}
