//
//  ContentView.swift
//  UsingSFSymbols
//
//  Created by Mahmoud Aziz on 19/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State var wifi_on: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "c")
                Image(systemName: "o")
                Image(systemName: "o")
                Image(systemName: "k")
            }.symbolVariant(.fill.circle)
                .foregroundStyle(.yellow, .blue)
                .font(.title)
            
            HStack{
                Image(systemName: "b.circle.fill")
                Image(systemName: "o.circle.fill")
                    .foregroundStyle(.red)
                Image(systemName: "o.circle.fill")
                    .imageScale(.large)
                Image(systemName: "k.circle.fill")
                    .accessibility(identifier: "Letter K")
            }.foregroundColor(.blue)
                .font(.title)
                .padding()
            
            HStack{
                            Image(systemName: "allergens")
                            Image(systemName: "ladybug")
                        }.symbolVariant(.fill)
                        .symbolRenderingMode(.multicolor)
                        .font(.largeTitle)
            
            Toggle(isOn: $wifi_on) {
                Label("wifi", systemImage: "wifi")
            }.foregroundStyle(wifi_on ? .blue : .secondary)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
