//
//  Part.swift
//  PickerViewTest
//
//  Created by 김수정 on 2021/03/04.
//

import SwiftUI

struct Part {
    var imageName: String
    var partName: String
    
    func makeImage() -> UIImage? {
        return UIImage (named: imageName)
    }
}

