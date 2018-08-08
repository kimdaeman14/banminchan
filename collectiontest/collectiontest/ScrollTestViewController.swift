//
//  ViewController.swift
//  ScrollViewPaging
//
//  Created by giftbot on 2018. 6. 19..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

final class ScrollTestViewController: UIViewController {
    
    // MARK: Properties
    
    private let pageControl = UIPageControl()
    private let scrollView = UIScrollView()
    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Setup
    
    private func setupUI() {
        scrollView.frame = view.frame
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        view.addSubview(scrollView)
        
        let pageColors: [UIColor] = [.red, .blue, .gray, .magenta]
        pageColors.forEach(addPageToScrollView(with:))
        
        pageControl.frame = CGRect(
            x: view.frame.midX - 20, y: view.frame.height - 60, width: 40, height: 20
        )
        view.addSubview(pageControl)
    }
    
    private func addPageToScrollView(with color: UIColor) {
        let pageFrame = CGRect(
            origin: CGPoint(x: scrollView.contentSize.width, y: 0),
            size: scrollView.frame.size
        )
        let colorView = UIView(frame: pageFrame)
        colorView.backgroundColor = color.withAlphaComponent(0.6)
        scrollView.addSubview(colorView)
        
        scrollView.contentSize.width += view.frame.width
        pageControl.numberOfPages += 1
    }
}

// MARK: - UIScrollViewDelegate

extension ScrollTestViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = Int(scrollView.contentOffset.x / scrollView.frame.width)
        pageControl.currentPage = page
    }
}

