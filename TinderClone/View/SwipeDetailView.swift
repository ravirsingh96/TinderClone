//
//  SwipeDetailView.swift
//  TinderClone
//
//  Created by RaviSingh on 19/02/21.
//

import SwiftUI
import SDWebImageSwiftUI


struct SwipeDetailView:View {

    var name = ""
    var age = ""
    var image = ""
    var height:CGFloat = 0
    
    var body: some View {
        
        ZStack {
            AnimatedImage(url: URL(string: image)!).resizable().cornerRadius(20).padding(.horizontal,15)
            
            VStack(alignment: .leading) {
                
                Spacer()
                HStack{
                    VStack{
                        Text(name)
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text(age).foregroundColor(.white)
                    }
                    Spacer()
                }
             
            }.padding([.bottom,.leading],35)
        }.frame(height: height)
        
        
    }
}
