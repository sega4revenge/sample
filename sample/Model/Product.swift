//
//  Product.swift
//  sample
//
//  Created by Tô tử Siêu on 5/18/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import ObjectMapper
struct Product: Mappable {
    var _id : String?
    var user : User?
    var productname: String?
    var price: String?
     var time: String?
     var number: String?
    var category: String?
    var description: String?
    var type: String?
    var created_at: String?
    var status: String?
    var view: Int?
    var location : Location?
    var images : [String]?
    var comment : [Comment]?
    init(){
        
    }
    init(productname: String? , price : String? ) {
        self.productname = productname
        self.price = price
    
    }
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        productname <- map["productname"]
        price <- map["price"]
         user <- map["user"]
    }
}
