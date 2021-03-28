//
//  LoginViewController.swift
//  PresentPushPop
//
//  Created by 김수정 on 2021/03/16.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func loginComplete(_ sender: Any) {
        guard let dvc = self.presentingViewController as? ViewController else { return }
        dvc.part = self.partTextField.text
        dvc.name = self.nameTextField.text
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func signupTouch(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") else {
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
}

