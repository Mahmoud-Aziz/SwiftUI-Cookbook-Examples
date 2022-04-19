//
//  ContentView.swift
//  ImageApp
//
//  Created by Mahmoud Aziz on 17/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("image1").resizable().aspectRatio(contentMode: .fill)
            Image("image2").resizable().aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 6))
                .shadow(radius: 10)
        }
    }
}

func getImageFromUIImage(image: String) -> UIImage {
    guard let img = UIImage(named: image) else {
        fatalError()
    }
    return img
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
