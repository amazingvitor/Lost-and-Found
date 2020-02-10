//
//  CircleImage.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 1/16/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.systemGray5), lineWidth: 1))
    }
}
