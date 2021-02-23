//
//  observer.swift
//  TinderClone
//
//  Created by RaviSingh on 19/02/21.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

class observer: ObservableObject{
    
    @Published var users = [DataType]()
    @Published var last = -1
    
    
    init() {
        FirebaseApp.configure()
        
        let db = Firestore.firestore()
        db.collection("users").getDocuments { (snap,err) in
            
            if err != nil {
                
            }
            
            for i in snap!.documents {
                let name = i.get("name")as! String
                let age = i.get ("age")as! String
                let image = i.get("image")as! String
                let id = i.documentID
                let status = i.get("status") as! String
                
                if status == "" {
                    self.users.append(DataType(id: id, name: name, image: image, age: age, swipe: 0, degree: 0))
                }
                
            }
        }
            
        
    }
   
    func update(id: DataType,degree: Double,value:CGFloat) {
        for i in 0..<self.users.count {
            if users[i].id == id.id {
                self.users[i].swipe = value
                    self.users[i].degree = degree
                self.last = i
            }
        }
        
    }
    
   
    
    func updateDB(id:DataType,status: String) {
        let db = Firestore.firestore()
        db.collection("users").document(id.id).updateData(["status":status]) { (error) in
            if error != nil {
                print(error!)
                return
            }
            print("sucess")
            for i in 0..<self.users.count {
                if self.users[i].id == id.id {
                    if status == "Liked" {
                        self.users[i].swipe = 500
                    }else if status == "reject"{
                        self.users[i].swipe = -500
                    }else {
                        self.users[i].swipe = 0
                    }
                }
            }
        }
    }
}



