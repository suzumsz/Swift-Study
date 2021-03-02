//
//  FirstViewController.swift
//  test2
//
//  Created by 김수정 on 2021/03/02.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var updateStateLabel: UILabel!
    @IBOutlet var updateIntervalLabel: UILabel!
    @IBOutlet var updateStateSwitch: UISwitch!
    @IBOutlet var updateIntervalStepper: UIStepper!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func valueChangedSwitch(_ sender: UISwitch) {
        if sender.isOn{
            self.updateStateLabel.text = "자동 갱신"
        }
        else {
            self.updateStateLabel.text = "수동 갱신"
        }
    }
    
    @IBAction func valueChangeStepper(_ sender: UIStepper) {
        updateIntervalLabel.text = "\(Int(sender.value))분 마다"
    }
    
    
    @IBAction func touchUpSubmit(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier:
            "ResultViewController") as? ResultViewController else { return
        }
        
        // 결과 화면에 데이터를 전달
        dvc.email = self.emailTextField.text
        dvc.isAutoUpdate = self.updateStateSwitch.isOn; dvc.updateInterval = Int(self.updateIntervalStepper.value) // modal 스타일 변경
        dvc.modalPresentationStyle = .fullScreen
        self.present(dvc, animated: true, completion: nil) }
}






