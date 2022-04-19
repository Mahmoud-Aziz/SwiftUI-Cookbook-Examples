//
//  BlueCircle.swift
//  UsingViewBuilder
//
//  Created by Mahmoud Aziz on 19/04/2022.
//

import SwiftUI

struct BlueCircle<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
            Spacer()
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 30)
        }.padding()
    }
}
