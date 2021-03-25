//
//  PartBannerCell.swift
//  CollectionViewTest
//
//  Created by 김수정 on 2021/03/04.
//

import UIKit

class PartBannerCell: UICollectionViewCell {
    static let identifier = "PartBannerCell"
    
    @IBOutlet weak var partImageView: UIImageView!
    
    func setImage(imageName: String) {
        partImageView.image = UIImage(named: imageName)
        
    }
}
