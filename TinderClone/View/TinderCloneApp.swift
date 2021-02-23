//
//  TinderCloneApp.swift
//  TinderClone
//
//  Created by RaviSingh on 17/02/21.
//

import SwiftUI
import Firebase

@main
struct TinderCloneApp: App {
    var body: some Scene {
        WindowGroup {
            
            ContentView()
            
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate,UIWindowSceneDelegate,ObservableObject {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
//    let obs = observer()
    
    return true
  }
    
//    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//        let content = ContentView()
//        let obs = observer()
//        if let windowScene = scene as? UIWindowScene {
//            let window = UIWindow(windowScene: windowScene)
//            window.rootViewController = UIHostingController(rootView: content.environmentObject(obs))
//
//        }
//        
//        
//    }
//    
//    func application(_ application: UIApplication,
//                     configurationForConnecting connectingSceneSession: UISceneSession,
//                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // The name must match the one in the Info.plist
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//    
    
}
