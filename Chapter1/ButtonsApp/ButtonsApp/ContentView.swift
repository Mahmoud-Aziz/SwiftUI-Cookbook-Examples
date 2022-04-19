//
//  ContentView.swift
//  ButtonsApp
//
//  Created by Mahmoud Aziz on 17/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: ButtonView()) {
                    Text("Buttons")
                }
                NavigationLink(destination: EditButtonView()) {
                    Text("edit buttons")
                        .padding()
                }
                NavigationLink(destination: MenuButtonView()) {
                    Text("menu buttons")
                        .padding()
                }
                NavigationLink(destination: PasteButtonView()) {
                    Text("paste buttons")
                        .padding()
                }
                NavigationLink(destination:
                                Text("Very long text that should not be displayed in a single line because it is not good design")
                    .padding()
                    .navigationBarTitle(Text("detail"))) {
                        Text("details about text")
                            .padding()
                    }
                               }.navigationBarTitle(Text("main view"), displayMode: .inline)
                               }
                               }
                               }
                               
                               
                               struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                    }
                }
