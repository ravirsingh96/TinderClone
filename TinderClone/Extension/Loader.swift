//
//  Loader.swift
//  TinderClone
//
//  Created by RaviSingh on 19/02/21.
//

import SwiftUI

struct Loader: UIViewRepresentable {
 
    
    func makeUIView(context: UIViewRepresentableContext<Loader>) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.startAnimating()
        return indicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Loader>) {
        
    }
}
