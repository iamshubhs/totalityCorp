//
//  cardView1.swift
//  NewApp
//
//  Created by Shubham Jha on 26/08/23.
//

import SwiftUI

struct cardView1: View {
    var body: some View {
        VStack {
            Image("macos-programming")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)

            .padding()
        }
    }
}

struct cardView1_Previews: PreviewProvider {
    static var previews: some View {
        cardView1()
    }
}
