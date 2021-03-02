//
//  ViewController.swift
//  test2
//
//  Created by 김수정 on 2021/03/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpClick(_ sender: Any) {
        helloLabel.text = "hello on sopt"
        
        helloLabel.sizeToFit()
    }
    
    @IBAction func touchUpMove(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier:"YelloViewController")else{
            return
        }
//        self.present(dvc, animated: true, completion: nil)
        self.navigationController?.pushViewController(dvc, animated: true )}
}

