//
//  MenuButtonView.swift
//  ButtonsApp
//
//  Created by Mahmoud Aziz on 17/04/2022.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Text("MenuButtons are currently available on MacOScurrently")
            .padding()
            .navigationBarTitle("MenuButtons", displayMode: .inline)
        /*
        MenuButton("country +") {
        Button("USA") { print("Selected USA") }
        .background(Color.accentColor)
        Button("India") { print("Selected India") }
        }
        */
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
    }
}
