//func setRecommendScrollView () {
//    recommendScrollView.isPagingEnabled = true
//    buttonTitle.forEach(addPageScrollView(with:))
//    for i in buttonTitle {
//        addPageScrollView(with: i)
//    }
//
//    addSubview(pageController)
//    pageController.pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.3)
//    pageController.currentPageIndicatorTintColor = symbolColor
//    pageController.translatesAutoresizingMaskIntoConstraints = false
//    pageController.bottomAnchor.constraint(equalTo: recommendScrollView.bottomAnchor,
//                                           constant: 0).isActive = true
//    pageController.centerXAnchor.constraint(equalTo: recommendScrollView.centerXAnchor,
//                                            constant: 0).isActive = true
//}
//
//func addPageScrollView(with title: String) {
//    let pageFrame = CGRect(
//        origin: CGPoint(x: recommendScrollView.contentSize.width,
//                        y: recommendScrollView.frame.minY),
//        size: recommendScrollView.frame.size
//    )
//
//    contentButton = UIButton()
//    contentButton.frame = pageFrame
//    contentButton.setBackgroundImage(UIImage(named: title), for: .normal)
//    contentButton.titleLabel?.text = title
//    buttonArr.append(contentButton)
//
//    recommendScrollView.addSubview(contentButton)
//    recommendScrollView.contentSize.width += RecommendTableViewCell.viewFrame.width
//    pageController.numberOfPages += 1
//}
