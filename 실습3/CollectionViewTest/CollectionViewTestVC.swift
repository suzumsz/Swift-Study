//
//  CollectionViewTestVC.swift
//  CollectionViewTest
//
//  Created by 김수정 on 2021/03/04.
//

import UIKit

class CollectionViewTestVC: UIViewController {
    @IBOutlet weak var bannerPageControl: UIPageControl!
    @IBOutlet weak var partCollectionView: UICollectionView!
    
    var banners: [String] = ["plan", "design","server","ios","android","web"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partCollectionView.delegate = self
        partCollectionView.dataSource = self
        pageControlInitLayout()

    }
    
    func pageControlInitLayout() {
    bannerPageControl.numberOfPages = banners.count
    bannerPageControl.currentPageIndicatorTintColor = .systemYellow
      }
    
    // MARK:- UIScrollViewDelegate extension CollectionViewTestVC {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) { bannerPageControl.currentPage = Int(scrollView.contentOffset.x) /
    Int(scrollView.frame.width)
        }
    }
    

extension CollectionViewTestVC: UICollectionViewDataSource { func collectionView(_ collectionView: UICollectionView,
    numberOfItemsInSection section: Int) -> Int { return banners.count}

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:PartBannerCell.identifier, for: indexPath) as? PartBannerCell else {
                return UICollectionViewCell()
    
    }
        cell.setImage(imageName: banners[indexPath.item]); return cell
 }
}

extension CollectionViewTestVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:UICollectionViewLayout, sizeForItemAt indexPath:
    IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height) }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat { return 0 }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat { return 0 }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
    }
}


