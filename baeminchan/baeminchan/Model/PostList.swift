//
//  PostList.swift
//  baeminchan
//
//  Created by kimdaeman14 on 2018. 8. 3..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import Foundation

struct PostList: Codable {
    let title: String
    let imageCover: String? //아..이게 null인 경우도 있어서 이거 ? 안해주면 타입이 안맞아서 안뜨나보다.
    let createdDate : String
    //    let author: [Author]
    
    
    enum CodingKeys: String, CodingKey{
        case title
        case imageCover = "img_cover"
        case createdDate = "created_date"
    }
    
    //    struct Author: Codable {
    //        let name: String
    //    }
    
    
}
