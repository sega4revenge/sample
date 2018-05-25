//
//  Comment.swift
//  sample
//
//  Created by Tô tử Siêu on 5/19/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import ObjectMapper

struct Comment: Mappable {
    var _id: String?
    var user: User?
    var content: String?
    var time: String?
    var listlike: [String]?
    var listreply: [Comment]?
    var stt: Bool = false
    init(){
        
    }
    
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
       
    }
}
