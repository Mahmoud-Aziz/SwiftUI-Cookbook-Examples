//
//  ActivityIndicator.swift
//  UIKitToSwiftUI
//
//  Created by Mahmoud Aziz on 19/04/2022.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    var animating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
            return UIActivityIndicatorView()
    }

    func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
        if animating {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
}
