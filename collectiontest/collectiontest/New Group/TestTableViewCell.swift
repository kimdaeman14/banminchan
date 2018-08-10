//
//  TestTableViewCell.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 10..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView1: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView1.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CollectionViewCell.reusableIdentifier)
        
        collectionView1.delegate = self
        collectionView1.dataSource = self
    }


}

extension TestTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reusableIdentifier, for: indexPath) as! CollectionViewCell
        
        return cell
    }
}

extension TestTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}

