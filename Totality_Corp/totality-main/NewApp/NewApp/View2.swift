//
//  View2.swift
//  NewApp
//
//  Created by Shubham Jha on 26/08/23.
//

import SwiftUI

struct View2: View {
    var displayedName: String
    @State private var useLargeTitle = false
    @State private var isPressed = false
    @State private var nextScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome, \(displayedName) !")
                    .font(useLargeTitle ? .largeTitle : .system(size: 20))
                    .fontWeight(useLargeTitle ? .ultraLight : .semibold)
                    .onTapGesture {
                        withAnimation {
                            useLargeTitle.toggle()
                        }
                    }
                    .scaleEffect(isPressed ? 1.1 : 1.0)
                    .padding()
                
                
                NavigationLink(destination: View3(), isActive: $nextScreen) {
                    EmptyView()
                }
                
                Button(action: {
                    nextScreen = true
                })
                {
                    Text("Click here")
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(isPressed ? Color.orange : Color.blue)
                        .cornerRadius(10)
                }
                
            }
        }
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2(displayedName: "Dev")
    }
}
