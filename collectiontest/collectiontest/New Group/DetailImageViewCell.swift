//
//  DetailImageViewCell.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 13..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class DetailImageViewCell: UITableViewCell, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
//    let pageControl = UIPageControl()
    var imageArr: [UIImage] = []
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
        makeImageData()
        setUI()
    }
    
    
    func makeImageData(){
        for index in 1...10 {
            let imageName = "main_event_banner" + String(index)
            imageArr.append(UIImage(named: imageName)!)
        }
    }
    //375 812
    func setUI() {
//        let height = 345 * scrollView.frame.width / 588
//        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        
        imageArr.forEach(addPageToScrollView(with:))
//        pageControl.frame = CGRect(
//            x: self.frame.midX - 20, y: height - 30, width: 40, height: 20
//        )
//        self.addSubview(pageControl)
    }
    
    private func addPageToScrollView(with image: UIImage) {
//        let height = 345 * scrollView.frame.width / 588
        let pageFrame = CGRect(
            origin: CGPoint(x: 0, y: scrollView.contentSize.height),
            size: CGSize(width: scrollView.frame.width, height: scrollView.frame.height)
        )
//        print(scrollView.frame.height)
        let imageButtonView = UIButton(frame: pageFrame)
        imageButtonView.contentMode = .scaleAspectFill
        imageButtonView.setBackgroundImage(image, for: .normal)
        scrollView.addSubview(imageButtonView)
        
        scrollView.contentSize.height += self.frame.height
//        pageControl.numberOfPages += 1
    }
}

//extension ScrollViewCell {
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let page = Int(scrollView.contentOffset.x / scrollView.frame.width)
//        pageControl.currentPage = page
//    }
//}

