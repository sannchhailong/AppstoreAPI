//
//  SocialApp.swift
//  AppStoreJSONApis
//
//  Created by Brian Voong on 2/18/19.
//  Copyright © 2019 Brian Voong. All rights reserved.
//

import Foundation

struct SocialApp: Decodable, Hashable {
    let id, name, imageUrl, tagline: String
}
