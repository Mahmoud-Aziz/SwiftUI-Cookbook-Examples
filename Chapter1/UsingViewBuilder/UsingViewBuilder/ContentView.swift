//
//  ContentView.swift
//  UsingViewBuilder
//
//  Created by Mahmoud Aziz on 19/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        BlueCircle {
            Text("some text")
            Rectangle()
                .fill(Color.red)
                .frame(width: 40, height: 40)
        }
        BlueCircle {
            Text("another example")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
