//
//  PickerViewTestVC.swift
//  PickerViewTest
//
//  Created by 김수정 on 2021/03/04.
//

import UIKit

class PickerViewTestVC: UIViewController {

    // IBOutlet 선언부
    @IBOutlet weak var partImageview: UIImageView!
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partPickerView: UIPickerView!
    
    var parts: [Part] = [] // Part정보를 저장할 배열을 멤버변수로 선언
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartDate() // viewDidLoad에서 setPartDate메소드 호출
        initLayout()
        partPickerView.dataSource = self // PickerView의 데이터를 제어하는 기능(DataSource)을 뷰 컨트롤러에 위임
        partPickerView.delegate = self
    }
    
    func setPartDate() { // Part정보를 생성하는 메소드 선언
        parts.append(contentsOf: [ // Part데이터 생성
        Part(imageName: "plan", partName: "Plan"),
        Part(imageName: "design", partName: "Design"),
        Part(imageName: "server", partName: "Server"),
        Part(imageName: "ios", partName: "iOS"),
        Part(imageName: "android", partName: "Android"),
        Part(imageName: "web", partName: "Web")
        ])
    }
    
    func initLayout() {
        let initPart = parts[3]
        //let imagePart = parts[3]
        partImageview.image = initPart.makeImage()
        partNameLabel.text = initPart.partName
    }
}

extension PickerViewTestVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    // PickerView의 컴포넌트 숫자를 지정해 주는 메소드
    return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    // PickerView의 각 컴포넌트에서 행의 개수를 지정해 주는 메소드
    // parts 데이터의 개수 만큼의 행이 필요
    return parts.count
    }
}

extension PickerViewTestVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    // PickerView의 각 행(row)의 title을 지정해주는 메소드
    // 저장해둔 parts 배열에서 각 행에 partName으로 지정
    return parts[row].partName
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    // PickerView에서 행(row)를 선택했을 때 수행할 동작을 지정해 주는 메소드
    let selectPart = parts[row]
    // 이미지 지정
    self.partImageview.image = selectPart.makeImage()
    // 라벨 지정
    self.partNameLabel.text = selectPart.partName
    }
}

