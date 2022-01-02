//
//  AppDelegate.swift
//  EX04_Login_Join
//
//  Created by 송윤근 on 2021/12/30.
//

import UIKit

struct UserInfo {
    var userid : String = ""
    var password : String = ""
    var name : String = ""
    var phonenumber : String = ""
    
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var isLogin : Bool = false;
    var isAgree : Bool = false;
    var userinfo : UserInfo = UserInfo()
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
      
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }


}

