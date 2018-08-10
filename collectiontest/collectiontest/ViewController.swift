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
        tableView.register(UINib(nibName: "imageViewCell", bundle: nil), forCellReuseIdentifier: imageViewCell.reusableIdentifier)
        tableView.register(UINib(nibName: "InformationCell", bundle: nil), forCellReuseIdentifier: InformationCell.reusableIdentifier)
        tableView.register(UINib(nibName: "CoperationCell", bundle: nil), forCellReuseIdentifier:
            CoperationCell.reusableIdentifier)
        tableView.register(UINib(nibName: "ProductViewCell", bundle: nil), forCellReuseIdentifier: ProductViewCell.reusableIdentifier)
        tableView.register(UINib(nibName: "PageControlCell", bundle: nil), forCellReuseIdentifier: PageControlCell.reusableIdentifier)
        
    }
    
    
    
    
}

//
//extension ViewController: UICollectionViewDataSource {
//    @available(iOS 6.0, *)
//    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
//        return 3
//    }
//
//
//    @available(iOS 6.0, *)
//    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reusableIdentifier, for: indexPath) as! CollectionViewCell
//        cell.detailImage.image = #imageLiteral(resourceName: "c0a4950bf03b0108d67ea69936f6eba5")
//        cell.label1.text = "22"
//        cell.label2.text = "22"
//        cell.label3.text = "22"
//
//        return cell
//    }
//
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//
//}


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
            //        case 1:
            //            let cell2 = tableView.dequeueReusableCell(withIdentifier: imageViewCell.reusableIdentifier, for: indexPath) as! imageViewCell
            //            tableView.rowHeight = 300
            //            return cell2
            
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
            let cell6 = tableView.dequeueReusableCell(withIdentifier: PageControlCell.reusableIdentifier) as! PageControlCell
            tableView.rowHeight = 300
            
            //cell6.scrollView.isPagingEnabled = true
            var baseFrame = CGRect(x: 0, y: 0, width: 0, height: 0)

            for index in 0..<arrImage.count {
               
                let subView = UIImageView(frame: baseFrame)
                
                baseFrame.origin.x = cell6.scrollView.contentSize.width
//                print(CGFloat(index))
                baseFrame.size = cell6.scrollView.frame.size
                
                subView.image = UIImage(named: arrImage[index])
                cell6.scrollView.addSubview(subView)
                cell6.scrollView.contentSize.width += subView.frame.width
                print(index)
                
            }
            
            return cell6
        case 5:
            let cell6 = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell") as! TestTableViewCell
            
            
            return cell6
            
        default:
            print("fail")
        }
        
        return cell
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        
        return 6
    }
    
}

