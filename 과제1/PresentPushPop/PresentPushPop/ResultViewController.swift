//
//  ResultViewController.swift
//  PresentPushPop
//
//  Created by 김수정 on 2021/03/27.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var partTextField: UILabel!
    @IBOutlet weak var nameTextField: UILabel!
    
    var part : String?
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()

        // Do any additional setup after loading the view.
    }
    
    func setLabel() {
    // 옵셔널 바인딩
    if let part = self.part{
        self.partTextField.text = part
        self.partTextField.sizeToFit()
        }
    if let name = self.name{
        self.nameTextField.text = name
        self.nameTextField.sizeToFit()
       }
           
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
