//
//  CollectionViewCell.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 8..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class CollectionViewCell: UITableViewCell {
    
    @IBOutlet weak var label1:UILabel!

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


extension CollectionViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionViewCell", for: indexPath)
        
        return cell
    }
    
    
    
    
}
