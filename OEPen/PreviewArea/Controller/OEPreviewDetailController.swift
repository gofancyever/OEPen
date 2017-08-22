//
//  OEPreviewDetailController.swift
//  OEPen
//
//  Created by gaof on 2017/8/22.
//  Copyright © 2017年 gaof. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class OEPreviewDetailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
extension OEPreviewDetailController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: OEPreviewCell.self), for: indexPath);
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detail = OEPreviewDetailController()
        self.navigationController?.pushViewController(detail, animated: true)
    }

}
