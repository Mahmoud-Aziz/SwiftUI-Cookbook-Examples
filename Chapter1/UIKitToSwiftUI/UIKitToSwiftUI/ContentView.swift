//
//  ContentView.swift
//  UIKitToSwiftUI
//
//  Created by Mahmoud Aziz on 19/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State var animate = true
    
    var body: some View {
        VStack{
            ActivityIndicator(animating: animate)
            HStack{
                Toggle(isOn: $animate) {
                    Text("toggle activity")
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
