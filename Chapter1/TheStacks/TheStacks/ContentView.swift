//
//  ContentView.swift
//  TheStacks
//
//  Created by Mahmoud Aziz on 17/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("VStack Item1")
            Text("VStack Item2")
            Spacer()
            Divider()
            Text("VStack Item 3")
            HStack{
                Text("item 1")
                Text("HStack item 2")
                Text("HStack item 3")
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading
            ).background(Color.red)
            ZStack{
                Text("ZStack Item 1").padding()
                    .background(Color.green)
                    .opacity(0.8)
                Text("ZStack Item 2")
                    .padding()
                    .background(Color.green)
                    .offset(x: 80, y: -400)
            }
        }.background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
