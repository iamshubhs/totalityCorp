//
//  View3.swift
//  NewApp
//
//  Created by Shubham Jha on 26/08/23.
//

import SwiftUI

struct View3: View {
    @State var show1 = false
    @State var show2 = false
    @State var show3 = false
    
    var body: some View {
        VStack {
            ZStack {
                cardView1()
                    .frame(width: 390, height: 320)
                VStack {
                    if show1 {
                        cardView1()
                            .transition(.slide)
                            .aspectRatio(contentMode: .fill)
                    }
                }
            }.onTapGesture {
                show1.toggle()
            }
        .animation(.easeIn)
            
            ZStack {
                cardView2()
                    .frame(width: 390, height: 320)
                VStack {
                    if show2 {
                        cardView2()
                            .transition(.slide)
                            .aspectRatio(contentMode: .fill)
                    }
                }
            }.onTapGesture {
                show2.toggle()
            }
        .animation(.easeIn)

        }
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}
