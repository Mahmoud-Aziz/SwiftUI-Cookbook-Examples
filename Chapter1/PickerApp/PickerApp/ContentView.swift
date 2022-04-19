//
//  ContentView.swift
//  PickerApp
//
//  Created by Mahmoud Aziz on 18/04/2022.
//

import SwiftUI

struct ContentView: View {
       @State var choice = 0
       @State var showText = false
       @State var transitModes = ["Bike", "Car", "Bus"]
       @State var sliderVal: Float = 0
       @State var stepVal = 0
       @State var gameTime = Date()
    
    var body: some View {
        Form{
            Section{
                Picker("Transit modes", selection: $choice) {
                    ForEach( 0..<self.transitModes.count) {
                    index in
                    Text("\(self.transitModes[index])")
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Current choise: \(transitModes[choice])")
        }
        
            Section{
                Toggle(isOn: $showText) {
                Text("show text")
            }
            if showText {
                Text("the text toggle is on")
            }
            }
            
            Section {
                Stepper("Stepper", value: $stepVal, in: 0...5)
                Text("stepper current value \(stepVal)")
            }
            
            Section {
                DatePicker("please select a date", selection: $gameTime)
            }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
