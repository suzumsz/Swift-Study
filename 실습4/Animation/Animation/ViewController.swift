//
//  ViewController.swift
//  Animation
//
//  Created by 김수정 on 2021/03/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bookImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func initPosition() {
       bookImageView.frame = CGRect(x: 0, y: 0, width: 150, height: 100)
    }
 
    @IBAction func touchUpStart(_ sender: Any) {
        let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
        let rotate = CGAffineTransform(rotationAngle: .pi / 4)
        let move = CGAffineTransform(translationX: 200, y: 200)
        let combine = scale.concatenating(move).concatenating(rotate)
        UIView.animate(withDuration: 1.0, animations: { self.bookImageView.transform = combine
            }) { finished in
                UIView.animate(withDuration: 1.0) {
        self.bookImageView.transform = .identity }
        }
    
/*  let newPosition = CGRect(x: 100, y: 100, width: 300, height: 200)
    UIView.animate(withDuration: 3.0, animations: { self.bookImageView.frame = newPosition
            }) { finished in UIView.animate(withDuration: 2.0) { self.initPosition()
    }
         
    UIView.animate(withDuration: 1.0, delay: 0) {
         self.bookImageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0) }    */
        
/*  UIView.animate( withDuration: 3.0, animations: { self.bookImageView.alpha = 0
        }) { finished in UIView.animate(withDuration: 1.0) { self.bookImageView.alpha = 1
         }
      }
   }    */
  
  }
}

