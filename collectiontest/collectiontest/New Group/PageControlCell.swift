//
//  PageControlCell.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 10..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class PageControlCell: UITableViewCell {

    static let reusableIdentifier = "pageControlCell"

    @IBOutlet weak var scrollView:UIScrollView!


    
    


    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
