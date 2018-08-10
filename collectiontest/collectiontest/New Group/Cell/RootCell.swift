//
//  RootCell.swift
//  collectiontest
//
//  Created by kimdaeman14 on 2018. 8. 8..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class RootCell: UITableViewCell {
    
    
//    private struct Metric {
//        static let numberOfItem: CGFloat = 3
//        static let numberOfLine: CGFloat = 3
//        static let topPadding: CGFloat = 5.0
//        static let leftPadding: CGFloat = 20.0
//        static let bottomPadding: CGFloat = 5.0
//        static let rightPadding: CGFloat = 20.0
//        static let lineSpacing: CGFloat = 10.0
//        static let itemSpacing: CGFloat = 10.0
//        static let nextOffset: CGFloat = 10.0
//    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    
  

}



//
//extension RootCell: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(
//        _ collectionView: UICollectionView,
//        layout collectionViewLayout: UICollectionViewLayout,
//        sizeForItemAt indexPath: IndexPath
//        ) -> CGSize {
//        let lineSpacing = Metric.lineSpacing * (Metric.numberOfLine - 1)
//        let horizontalPadding = Metric.leftPadding + Metric.lineSpacing + Metric.nextOffset
//        let itemSpacing = Metric.itemSpacing * (Metric.numberOfItem - 1)
//        let verticalPadding = Metric.topPadding + Metric.bottomPadding
//        let width = (collectionView.frame.width - lineSpacing - horizontalPadding) / Metric.numberOfLine
//        let height = (collectionView.frame.height - itemSpacing - verticalPadding) / Metric.numberOfItem
//        return CGSize(width: width, height: height)
//    }
//
//    func collectionView(
//        _ collectionView: UICollectionView,
//        layout collectionViewLayout: UICollectionViewLayout,
//        minimumLineSpacingForSectionAt section: Int
//        ) -> CGFloat {
//        return Metric.lineSpacing
//    }
//
//    func collectionView(
//        _ collectionView: UICollectionView,
//        layout collectionViewLayout: UICollectionViewLayout,
//        minimumInteritemSpacingForSectionAt section: Int
//        ) -> CGFloat {
//        return Metric.itemSpacing
//    }
//
//    func collectionView(
//        _ collectionView: UICollectionView,
//        layout collectionViewLayout: UICollectionViewLayout,
//        insetForSectionAt section: Int
//        ) -> UIEdgeInsets {
//        return UIEdgeInsetsMake(Metric.topPadding, Metric.leftPadding,
//                                Metric.bottomPadding, Metric.rightPadding)
//    }
//
//}

