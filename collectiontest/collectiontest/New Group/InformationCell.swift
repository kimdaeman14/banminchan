//
//  InformationCell.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 8..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class InformationCell: UITableViewCell {

    static let reusableIdentifier = "informationCell"

    
    @IBOutlet weak var label1:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var label3:UILabel!
    @IBOutlet weak var button:UIButton!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
}
