//
//  CollectionViewCell.swift
//  project3
//
//  Created by 김수정 on 2021/04/02.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "CollectionViewCell"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    func setImage(imageName: String) {
        imageView.image = UIImage(named: imageName) }
}
