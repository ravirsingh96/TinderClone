//
//  ContentView.swift
//  TinderClone
//
//  Created by RaviSingh on 17/02/21.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI


struct ContentView: View {
    
    @EnvironmentObject var obs : observer
 //   @State var showLiked = false
    var body : some View {
        ZStack {
            if obs.users.isEmpty {
                Loader()
            }
            
            VStack {
 //               TopView(show: $showLiked)
                TopView()
                
                SwipeView()
                
                BottomView()
            }
        }//.sheet(isPresented: $showLiked) {
//            Text("lst")
  //      }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






