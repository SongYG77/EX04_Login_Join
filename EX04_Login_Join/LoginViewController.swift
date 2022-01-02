//
//  LoginViewController.swift
//  EX04_Login_Join
//
//  Created by 송윤근 on 2022/01/02.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfpassword: UITextField!
    
    let appdelegate = UIApplication .shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onbtnLogin(_ sender: UIButton) {
        
        //원래는 통신을 통해서 동작.(이건 기초)
        
        let id = tfID.text
        let password = tfpassword.text
        
        //예외처리 파트.
        //아이디와 패스워드가 입력이 되었는지.
        
        if let safeid = id, let safepw = password{
            //다 nil이 아닌 경우.
            if safeid.count < 3 || safepw.count < 4 {
                print("아이디와 패스워드를 다시 확인해주세요.")
                return
            }
            
            appdelegate.userinfo.userid = safeid
            appdelegate.userinfo.password = safepw
            appdelegate.isLogin = true
            
            self.navigationController?.popViewController(animated: true)
            
        }
        else {
            print("id나 pw가 입력되지 않았습니다.")
        }
        
    }
    
    
}
