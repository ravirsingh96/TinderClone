//
//  BottomView.swift
//  TinderClone
//
//  Created by RaviSingh on 17/02/21.
//

import SwiftUI

struct BottomView: View {
    
    @EnvironmentObject var obs : observer
    
    var body: some View {
        HStack {
            Button(action: {
                if self.obs.last != -1 {
                    self.obs.updateDB(id: self.obs.users[self.obs.last], status: "")
                }
            }) {
                Image(systemName: "arrow.clockwise").resizable().frame(width: 30, height: 30).padding()
                    
            }.foregroundColor(.yellow)
            .background(Color(red: 211/255.0, green: 211/255.0, blue: 211/255.0))
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
                if self.obs.last == -1 {
                    self.obs.updateDB(id: self.obs.users[self.obs.users.count - 1], status: "reject")
                }else {
                    self.obs.updateDB(id: self.obs.users[self.obs.last - 1], status: "reject")
                }
                
            }) {
                Image(systemName: "xmark").resizable().frame(width: 30, height: 30).padding()
            }.foregroundColor(.red)
            .background(Color(red: 211/255.0, green: 211/255.0, blue: 211/255.0))
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
            }) {
                Image(systemName: "bolt.fill").resizable().frame(width: 30, height: 30).padding()
            }.foregroundColor(.purple)
            .background(Color(red: 211/255.0, green: 211/255.0, blue: 211/255.0))
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
                if self.obs.last == -1 {
                    self.obs.updateDB(id: self.obs.users[self.obs.users.count - 1], status: "liked")
                }else {
                    self.obs.updateDB(id: self.obs.users[self.obs.last - 1], status: "liked")
                }
                
            }) {
                Image(systemName: "heart.fill").resizable().frame(width: 30, height: 30).padding()
            }.foregroundColor(.green)
            .background(Color(red: 211/255.0, green: 211/255.0, blue: 211/255.0))
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
            }) {
                Image(systemName: "star.fill").resizable().frame(width: 30, height: 30).padding()
            }.foregroundColor(.blue)
            .background(Color(red: 211/255.0, green: 211/255.0, blue: 211/255.0))
            .shadow(radius: 25)
            .clipShape(Circle())
            
            
        
            
     
        }
    }
}

//struct BottomView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomView()
//    }
//}
