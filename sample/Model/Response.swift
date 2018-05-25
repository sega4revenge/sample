//
//  Response.swift
//  sample
//
//  Created by Tô tử Siêu on 5/14/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import ObjectMapper

struct Response: Mappable {
  
    var message: String?
    var status: Int?
    var listproduct : [Product]?
    
    init() {
        
    }
    
 
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        message <- map["message"]
        status <- map["status"]
         listproduct <- map["listproduct"]
    }
}
