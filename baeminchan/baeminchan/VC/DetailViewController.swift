//
//  DetailViewController.swift
//  baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 3..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label1:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var imageView:UIImageView!

    var lateltext1:String?
    var lateltext2:String?
    var detailImage:UIImage?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.label1.text = self.lateltext1
        self.label2.text = self.lateltext2
        self.imageView.image = self.detailImage

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
}
