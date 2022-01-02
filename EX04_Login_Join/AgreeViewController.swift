//
//  AgreeViewController.swift
//  EX04_Login_Join
//
//  Created by 송윤근 on 2022/01/02.
//

import UIKit

class AgreeViewController: UIViewController {
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func onswitchAgree(_ sender: UISwitch) {
        
        if sender.isOn {
            appdelegate.isAgree = true
        }
        else {
            appdelegate.isAgree = false
        }
    }
    
    @IBAction func onbtnDone(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
