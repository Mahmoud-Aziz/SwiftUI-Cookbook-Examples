//
//  ContentView.swift
//  UsingViewModifiers
//
//  Created by Mahmoud Aziz on 19/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("perfect").modifier(BackgroundStyle(bgColor: .red))
            .padding()
    }
}

struct BackgroundStyle: ViewModifier {
    var bgColor: Color
    
    func body(content: Content) -> some View {
        content.frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundColor(Color.black)
            .padding()
            .background(bgColor)
            .cornerRadius(CGFloat(20))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func backgroundStyle(color: Color) -> some View{
        self.modifier(BackgroundStyle(bgColor: color))
    }
}
