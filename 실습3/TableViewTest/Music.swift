//
//  Music.swift
//  TableViewTest
//
//  Created by 김수정 on 2021/03/04.
//

import SwiftUI

struct Music {
    var title: String
    var singer: String
    var albumImageName: String
    
    func makeAlbumImage() -> UIImage? {
        return UIImage(named: albumImageName)
    }
}
