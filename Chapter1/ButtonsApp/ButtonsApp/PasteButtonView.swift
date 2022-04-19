//
//  PasteButtonView.swift
//  ButtonsApp
//
//  Created by Mahmoud Aziz on 17/04/2022.
//

import SwiftUI

struct PasteButtonView: View {
    @State var text = String()
    
    var body: some View {
        VStack {
            Text("PasteButton controls how you paste in macOS but is not available in iOS. For more information,check the \"See also\" section of this recip")
                .padding()
        }.navigationBarTitle("paste Button", displayMode: .inline)
    }
}

struct PasteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonView()
    }
}
