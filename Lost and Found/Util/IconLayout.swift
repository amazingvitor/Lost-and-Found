//
//  IconLayout.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/14/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct IconLayout: View {
    
    @State var iconImage: String
    @State var rectangleFill: UIColor
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color(rectangleFill))
                .frame(width: 30, height: 30)
            
            Image(systemName: iconImage)
                .frame(width: 30, height: 30, alignment: .center)
                .font(.headline)
                .foregroundColor(.white)
        }
        
    }
}

// MARK: SwiftUI Preview
struct IconLayout_Previews: PreviewProvider {
    static var previews: some View {
        IconLayout(iconImage: "info", rectangleFill: .systemBlue)
    }
}
