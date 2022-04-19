//
//  ContentView.swift
//  FormattedText
//
//  Created by Mahmoud Aziz on 17/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State var password = "1234"
    @State var someText = "initial text"
    
    var body: some View {
        VStack{
            Group {
            SecureField("Enter a password", text: $password).padding()
            Text("password entered: \(password)")
            TextField("Enter some text", text: $someText).padding()
            }
            Text("\(someText)")
                .font(.largeTitle)
                .underline()
            Text("Changing text color and make in bold").foregroundColor(Color.blue)
                .bold()
            Text("use kerning to change space between lines of text").kerning(7)
            Text("changing baseline offset")
                .baselineOffset(100)
            Text("Strikethrough").strikethrough()
            Text("This is a multiline text implementedd in swiftUI. the trailing modifier was added to the text. this text aloso implements multiple modifiers")
                .background(Color.yellow)
                .multilineTextAlignment(.trailing)
                .lineSpacing(10)
            Text("some text")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
