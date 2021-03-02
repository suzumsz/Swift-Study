//
//  ResultViewController.swift
//  test2
//
//  Created by 김수정 on 2021/03/02.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var updateStateLabel: UILabel!
    @IBOutlet var updateIntervalLabel: UILabel!
    
    var email : String?
    var isAutoUpdate : Bool?
    var updateInterval : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        // Do any additional setup after loading the view.
    }
    
    func setLabel() {
    // 옵셔널 바인딩
    if let email = self.email,
    let isAutoUpdate = self.isAutoUpdate,
    let updateInterval = self.updateInterval {
    
        self.emailLabel.text = email
        self.emailLabel.sizeToFit()
    
    self.updateStateLabel.text = isAutoUpdate ? "On" : "Off"
    self.updateIntervalLabel.text = "\(updateInterval)분"
        
        }
    }
    @IBAction func touchUpBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
