//
//  ViewController.swift
//  PresentPushPop
//
//  Created by 김수정 on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var part : String?
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setLabel()
        print("viewDidLoad 입니다")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setLabel()
        print("viewWillAppears 입니다")
    }
    
    
    
    func setLabel() {
        // 옵셔널 바인딩
        if let part = self.part{
            self.partLabel.text = part
            self.partLabel.sizeToFit()
        }
        if let name = self.name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        
    }
    @IBAction func loginTouchUp(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "LoginViewController") else {
            return
        }
        self.present(dvc, animated: true)
    }
    
}
