//
//  Location.swift
//  sample
//
//  Created by Tô tử Siêu on 5/19/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import ObjectMapper

struct Location: Mappable {
    var point: String?
    var address: String?
    
    /* var coordinates : IntArray? = null*/
    var coordinates : [Double]?
    init(){
        
    }
   
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        point <- map["point"]
        address <- map["address"]
        coordinates <- map["coordinates"]
    }
}
