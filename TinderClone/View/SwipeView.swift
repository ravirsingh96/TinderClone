//
//  SwipeView.swift
//  TinderClone
//
//  Created by RaviSingh on 19/02/21.
//

import SwiftUI

struct SwipeView: View {
    
    @EnvironmentObject var observe : observer
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(observe.users) {i in
                    SwipeDetailView(name: i.name, age: i.age, image: i.image,height: geo.size.height - 100).gesture(DragGesture()
                                                                                                                        
                            .onChanged({ (value) in
                            if value.translation.width > 0 {
                        self.observe.update(id: i, degree: 8, value: value.translation.width)
                        }else {
                            self.observe.update(id: i, degree: -8, value: value.translation.width)
                        }
                        }).onEnded({ (value) in
                    if i.swipe > 0 {
                    if i.swipe > geo.size.width / 2 - 80 {
                    self.observe.update(id: i, degree: 0, value: 500)
                        self.observe.updateDB(id: i, status: "Liked")
                        }else {
                            self.observe.update(id: i, degree: 0, value: 0)
                        }
                          }else {
                            if -i.swipe > geo.size.width / 2 - 80 {
                            self.observe.update(id: i, degree: 0, value: -500)
                                self.observe.updateDB(id: i, status: "Reject")
                            }else {
                        self.observe.update(id: i, degree: 0, value: 0)
                        }
                    }
                })
                    ).offset(x: i.swipe)
                    .rotationEffect(.init(degrees: i.degree))
                    .animation(.spring())
                    
                }
                
                
            }
        }
    }
}
