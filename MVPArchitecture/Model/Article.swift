//
//  Article.swift
//  MVPArchitecture
//
//  Created by Raksmey on 12/14/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
import ObjectMapper

struct ArticleData {
    var articles: [Article]?
}

struct Article {
    var title: String?
    var desc: String?
    var author: Author?
    var category: Category?
}

struct Author {
    var name: String?
    var email: String?
}

struct Category {
    var name: String?
}

extension ArticleData : Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        articles <- map["DATA"]
    }
}

extension Article: Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        title <- map["TITLE"]
        desc <- map["DESCRIPTION"]
        author <- map["AUTHOR"]
        category <- map["CATEGORY"]
    }
}

extension Author: Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        name <- map["NAME"]
        email <- map["EMAIL"]
    }
}

extension Category: Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        name <- map["NAME"]
    }
}










