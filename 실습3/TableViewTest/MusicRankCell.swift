//
//  MusicRankCell.swift
//  TableViewTest
//
//  Created by 김수정 on 2021/03/04.
//

import UIKit

class MusicRankCell: UITableViewCell {
    static let identifier = "MusicRankCell" // identifier 상수를 static으로 선언
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    func setCell(rank: Int, music: Music) {
        albumImageView.image = music.makeAlbumImage()
        rankLabel.text = "\(rank + 1)"
        titleLabel.text = music.title
        singerLabel.text = music.singer
    }

}
