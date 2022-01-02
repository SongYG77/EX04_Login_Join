//
//  JoinViewController.swift
//  EX04_Login_Join
//
//  Created by 송윤근 on 2022/01/02.
//

import UIKit

class JoinViewController: UIViewController {
    
    @IBOutlet weak var tfid: UITextField!
    @IBOutlet weak var tfpw: UITextField!
    @IBOutlet weak var tfname: UITextField!
    @IBOutlet weak var tfphone: UITextField!
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onbtnJoin(_ sender: UIButton) {
        
        if appdelegate.isAgree == false {
            print("약관동의를 해주세요")
            return
        }
        
        let id = tfid.text
        let pw = tfpw.text
        let name = tfname.text
        let phone = tfphone.text
        
        if let safeid = id, let safepw = pw, let safename = name, let safephone = phone {
            
            if safeid.count < 3 {
                print("아이디를 확인하세요")
                return
            }
            if safepw.count < 4 {
                print("패스워드를 확인하세요")
                return
            }
            if safename.count < 1 {
                print("이름을 확인하세요")
                return
            }
            if safephone.count < 8 {
                print("핸드폰 번호를 확인하세요")
                return
            }
            
            appdelegate.userinfo.userid = safeid
            appdelegate.userinfo.password = safepw
            appdelegate.userinfo.name = safename
            appdelegate.userinfo.phonenumber = safephone
            
            print("회원가입 완료")
            
            self.navigationController?.popViewController(animated: true)
            
            
        }
        else {
            print("입력하신 정보에 빈칸이 있습니다.")
        }
        
    }
    
    
  

}
