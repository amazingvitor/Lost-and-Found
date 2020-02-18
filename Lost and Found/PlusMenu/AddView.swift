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
        VStack(alignment: .leading, spacing: 20) {
            GeometryReader { geometry in
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0 ..< 5) { item in
                            CardMini()
                                .frame(width: geometry.size.width, height: 200)
                        }
                    }
                }
            }.frame(height: 200)
            
            TextField("Email", text: $title)
                .font(.system(size: 14))
                .padding(12)
                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
            
            TextField("Email or Username", text: $title)
                .font(.system(size: 14))
                .padding(12)
                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
            
            TextField("Email or Username", text: $title)
                .font(.system(size: 14))
                .padding(12)
                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
            
            Spacer()
        } .padding(20)
        
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(title: "")
    }
}
