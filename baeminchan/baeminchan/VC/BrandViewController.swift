//
//  BrandViewController.swift
//  baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 3..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//
    
    import Foundation
    import XLPagerTabStrip
    
    class BrandViewController: UIViewController, IndicatorInfoProvider {
        var itemInfo: IndicatorInfo = "View"
        init(itemInfo: IndicatorInfo) {
            self.itemInfo = itemInfo
            super.init(nibName: nil, bundle: nil)
        }
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        // MARK: - IndicatorInfoProvider
        
        func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
            return itemInfo
        }
        
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view()
            
        }
        
        func view(){
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "BrandViewController"
            view.addSubview(label)
            view.backgroundColor = .white
            view.addConstraint(NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
            view.addConstraint(NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -50))
        }
        
        
        
}


