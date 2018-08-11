//
//  ViewController.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 7..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let str = "안녕하세요"
    let str2 = "반갑습니다"
    let image = #imageLiteral(resourceName: "c0420529ceed879acfb2ff88d9dac7ae")
   
        let arrImage: [String] = ["a3064bfb56f135be09b06708ba566425",
                                  "d8306452d7b3820f92146848e88378fd",
                                  "a3064bfb56f135be09b06708ba566425",
                                  "d8306452d7b3820f92146848e88378fd"
    ]
    
    @IBOutlet weak var tableView:UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//                collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CollectionViewCell.reusableIdentifier)
        
        //닙네임은 파일이름
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: CustomCell.reusableIdentifier)
        tableView.register(UINib(nibName: "InformationCell", bundle: nil), forCellReuseIdentifier: InformationCell.reusableIdentifier)
        tableView.register(UINib(nibName: "CoperationCell", bundle: nil), forCellReuseIdentifier:
            CoperationCell.reusableIdentifier)
        tableView.register(UINib(nibName: "ProductViewCell", bundle: nil), forCellReuseIdentifier: ProductViewCell.reusableIdentifier)
        tableView.register(UINib(nibName: "DetailHeaderCell", bundle: nil), forCellReuseIdentifier: DetailHeaderCell.reusableIdentifier)
       
        
    }
    
    
    
    
}



extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: CustomCell.reusableIdentifier, for: indexPath) as! CustomCell
            cell1.label1.text = str
            cell1.label2.text = str2
            tableView.rowHeight = 80
            DispatchQueue.main.async {
                cell1.imageCell.image = self.image
            }
            return cell1
            
        case 1:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: InformationCell.reusableIdentifier, for: indexPath) as! InformationCell
            tableView.rowHeight = 200
            return cell3
            
        case 2:
            let cell4 = tableView.dequeueReusableCell(withIdentifier: CoperationCell.reusableIdentifier, for: indexPath) as! CoperationCell
            tableView.rowHeight = 600
            return cell4
            
        case 3:
            let cell5 = tableView.dequeueReusableCell(withIdentifier: ProductViewCell.reusableIdentifier, for: indexPath) as! ProductViewCell
            tableView.rowHeight = 500
            return cell5
            
        case 4:
            let cell5 = tableView.dequeueReusableCell(withIdentifier: ProductViewCell.reusableIdentifier, for: indexPath) as! ProductViewCell
            tableView.rowHeight = 500
            return cell5

        case 5:
            let cell7 = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell") as! TestTableViewCell
            return cell7
            
        case 6:
            let cell8 = tableView.dequeueReusableCell(withIdentifier: "scrollViewCell") as! ScrollViewCell
            return cell8
            
        case 7:
            tableView.rowHeight = 43.5
            let cell9 = tableView.dequeueReusableCell(withIdentifier: "detailHeaderCell") as! DetailHeaderCell
            return cell9
            
        default:
            print("fail")
        }
        
        return cell
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        
        return 8
    }
    
}

