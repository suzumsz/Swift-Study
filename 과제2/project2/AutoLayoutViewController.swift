//
//  AutoLayoutViewController.swift
//  project2
//
//  Created by 김수정 on 2021/03/28.
//

import UIKit

class AutoLayoutViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var profile_btn: UIButton!
    @IBOutlet weak var topBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profile_btn.layer.cornerRadius = 5
        topBtn.layer.cornerRadius = 25
        topBtn.isHidden = true // 스크롤 뷰가 처음 나올 때 버튼은 없어야 함
        scrollView.delegate = self
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if(scrollView.contentOffset.y > (scrollView.contentSize.height - scrollView.frame.size.height) / 3){
            topBtn.isHidden = false // 버튼을 보이게 함
        }
        else{
            topBtn.isHidden = true // 그렇지 않으면 버튼 숨김
        }
    }
    // 버튼 클릭 시


        @IBAction func topBtn(_ sender: Any) {

        topBtn.isHidden = true // 버튼을 숨기고
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true) // 최상단으로 이동

    }

}
