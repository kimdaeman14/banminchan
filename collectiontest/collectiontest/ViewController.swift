//
//  ViewController.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 7..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let data = ["아침","점심","저녁"]
    
    @IBOutlet weak var tableView:UITableView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(UINib(nibName: "CustomerServiceNib", bundle: nil), forCellWithReuseIdentifier: "CustomerServNib")
        
        tableView.register(UINib?, forCellReuseIdentifier: "CustomerServiceNib")

    }


}


extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell1 = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "CustomerServiceNib")
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "CustomerServiceNib", for: indexPath) as! CustomerServiceNib
        
        let cell2 = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "ProductInfoCell")
        let cell3 = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "ProductInfoCell")

    
        switch data[indexPath.row] {
        case "아침":
            
            return cell1
        case "점심":
            cell2.textLabel?.text = data[indexPath.row]

            return cell2
        case "저녁":
            cell3.textLabel?.text = data[indexPath.row]

            return cell3
        default:
            print("fail")
        }
        
        return cell1
        
    }
    
  
 
}

