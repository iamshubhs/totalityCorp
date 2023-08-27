//
//  cardView2.swift
//  NewApp
//
//  Created by Shubham Jha on 26/08/23.
//

import SwiftUI

struct cardView2: View {
    var body: some View {
        VStack {
            Image("flutter-app")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            
            .padding()
        }
    }
}

struct cardView2_Previews: PreviewProvider {
    static var previews: some View {
        cardView2()
    }
}
