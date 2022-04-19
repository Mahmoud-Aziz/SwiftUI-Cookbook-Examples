//
//  ContentView.swift
//  MoreViewsAndControls
//
//  Created by Mahmoud Aziz on 20/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var progress = 0.5
     @State private var color  = Color.red
     @State private var secondColor  = Color.yellow
     @State private var someText = "Initial value"
    
    var body: some View {
        List{
            Section(header: Text("ProgressView")) {
                ProgressView("indeterminate progress view")
                ProgressView("downloading", value: progress, total: 2)
                Button("More"){
                    if(progress < 2){
                        progress += 0.5
                    }
                }
            }
            Section(header: Text("labels")) {
                Label("slow", systemImage: "tortoise.fill")
                Label{
                    Text("fast")
                        .font(.title)
                }
            icon: {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 40, height: 20, alignment: .center)
                    .overlay(Text("F"))
            }
            }
            Section(header: Text("colorPicker")) {
                ColorPicker(selection: $color) {
                    Text("pick my background")
                        .padding()
                }
                ColorPicker("picker", selection: $secondColor)
            }
            Section(header: Text("texteditor")) {
                TextEditor(text: $someText)
                Text("current editor text: \n \(someText)")
            }
            Section(header: Text("menu")) {
                Menu("actions") {
                    Button("set texteditor text to magic"){
                        someText = "magic"
                    }
                    Button("turn first picker green"){
                        color = Color.green
                    }
                    Menu("actions"){
                        Button("set texteditor text to magic"){
                            someText = "magic"
                        }
                        Button("turn first picker green"){
                            color = Color.green
                        }
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
