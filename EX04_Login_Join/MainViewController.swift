//
//  ViewController.swift
//  EX04_Login_Join
//
//  Created by 송윤근 on 2021/12/30.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var LoginStatas: UILabel!
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if appdelegate.isLogin {
            LoginStatas.text = "로그인 상태 : Login \(appdelegate.userinfo.userid)"
        }
        else {
            LoginStatas.text = "로그인 상태 : Logout"
            
        }
    }

    @IBAction func onbtnLogout(_ sender: UIButton) {
        appdelegate.isLogin = false
        LoginStatas.text = "로그인 상태 : Logout"
    }
    
}

