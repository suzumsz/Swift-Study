//
//  MusicInfoVC.swift
//  TableViewTest
//
//  Created by 김수정 on 2021/03/04.
//

import UIKit

class MusicInfoVC: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    
    var music: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicInfo()
    }
    func setMusicInfo() {
        if let music = music {
            titleLabel.text = music.title
            singerLabel.text = music.singer
            albumImageView.image = music.makeAlbumImage()
    }
    }
}
