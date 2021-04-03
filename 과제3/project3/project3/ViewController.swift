//
//  ViewController.swift
//  project3
//
//  Created by 김수정 on 2021/03/31.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
  
    @IBOutlet weak var collectionView: UICollectionView!
    
    var nameLabel: [String] = ["김수정", "김메리","유재석","하동훈","박명수","정준하"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
      
       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
        
        return cell
        <#code#>
    }

}

