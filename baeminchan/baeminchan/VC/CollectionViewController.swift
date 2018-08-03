//
//  CollectionViewController.swift
//  baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 3..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit
import Alamofire

class CollectionViewController: UIViewController {
    
    @IBOutlet weak var collectView:UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

         collectView.register(UINib(nibName: "PostListCell", bundle: nil), forCellWithReuseIdentifier: "PostList")
        takeData()
    }

    
    var postlist: [PostList] = [] {
        didSet {
            self.collectView.reloadData()
        }
    }
    
    func takeData(){
        let url = URL(string: "https://api.lhy.kr/posts/")
        Alamofire.request(url!, method: HTTPMethod.get)
            .validate(statusCode: 200..<400)
            .responseData { [weak self] (response) in
                switch response.result{
                case .success(let value):
                    print(value)
                    do{
                        self?.postlist = try JSONDecoder().decode([PostList].self, from: value)
                    }catch{
                        print(error.localizedDescription)
                    }
                //                print(self?.postlist)
                case .failure(let error):
                    print(error)
                }
        }
    }
   

}


extension CollectionViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postlist.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostList", for: indexPath) as! PostListCell
        
        cell.firstLabel.text = self.postlist[indexPath.row].title
        cell.secondLabel.text = self.postlist[indexPath.row].createdDate
        let imageCoverURL = self.postlist[indexPath.row].imageCover
        // TODO: - 옵셔널바인딩 수정할것
        if let imageCoverURL = imageCoverURL {
            let url = URL(string: imageCoverURL)
            if let urlData = url {
                let task = URLSession.shared.dataTask(with: urlData) { (data,respones,error) in
                    if let image = data{
                        let images = UIImage(data: image)
                        DispatchQueue.main.async {
                            cell.imageView?.image = images
                        }
                    }
                }
                task.resume()
            }
        }
        return cell
    }
    
    
    
    
}
