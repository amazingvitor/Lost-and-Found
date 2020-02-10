//
//  Teste.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/10/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct Teste: View {
    var body: some View {
        VStack {
            Text("Recent")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0 ..< 5) { item in
                        CardMini()
                            .frame(maxWidth: .infinity)
                            .frame(width: UIScreen.main.bounds.width, height: 200)
                            .padding(.bottom)
                    }
                }
            }
            .frame(height: 150)
        }
        
    }
}

struct Teste_Previews: PreviewProvider {
    static var previews: some View {
        Teste()
    }
}
