//
//  CustomerServiceNib.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 8..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class CustomerServiceNib: UITableViewCell {

    @IBOutlet weak var clabel1:UILabel!
    @IBOutlet weak var clabel2:UILabel!
    @IBOutlet weak var clabel3:UILabel!
    @IBOutlet weak var clabel4:UILabel!
    @IBOutlet weak var cbutton1:UIButton!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
     
    }
   

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


//extension CustomerServiceNib: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerServiceNib", for: indexPath) as! CustomerServiceNib
//
//        return cell
//    }
//
//
//
//
//}
