//
//  Reviews.swift
//  AppStoreJSONApis
//
//  Created by Brian Voong on 2/22/19.
//  Copyright © 2019 Brian Voong. All rights reserved.
//

import Foundation

struct Reviews: Decodable {
    let feed: ReviewFeed
}

struct ReviewFeed: Decodable {
    let entry: [Entry]
}

struct Entry: Decodable {
    let author: Author
    let title: Label
    let content: Label
    
    let rating: Label
    
    private enum CodingKeys: String, CodingKey {
        case author, title, content
        case rating = "im:rating"
    }
}

struct Author: Decodable {
    let name: Label
}

struct Label: Decodable {
    let label: String
}
