//
//  TopView.swift
//  TinderClone
//
//  Created by RaviSingh on 17/02/21.
//

import SwiftUI


struct TopView: View {
    
 //   @Binding var show : Bool
    
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "person.fill").resizable().frame(width: 35, height: 35)
                
            }.foregroundColor(.red)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "flame.fill").resizable().frame(width: 35, height: 35)
                
            }.foregroundColor(.red)
            
            Spacer()
            
            Button(action: {
//                self.show.toggle()
                
            }) {
                Image(systemName: "message.fill").resizable().frame(width: 35, height: 35)
                
            }.foregroundColor(.red)
        }.padding()
        
    }
}
//
//struct TopView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopView()
//    }
//}
