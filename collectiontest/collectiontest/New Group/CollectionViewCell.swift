//
//  CollectionViewCell.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 8..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    static let reusableIdentifier = "collectionViewCell"
    
    @IBOutlet weak var detailImage:UIImageView!
    @IBOutlet weak var label1:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var label3:UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
