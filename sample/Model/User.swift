//
//  User.swift
//  sample
//
//  Created by Tô tử Siêu on 5/17/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import Foundation
import ObjectMapper

struct User: Mappable {

    var name: String?
    var email: String?
     var phone: String?
    var tokenfirebase : String?
    init(){
        
    }
    init(name : String? , email : String? , phone : String? , tokenfirebase : String?) {
        self.name = name
        self.email = email
        self.phone = phone
        self.tokenfirebase = tokenfirebase
    }
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        name <- map["name"]
        email <- map["email"]
        phone <- map["phone"]
        tokenfirebase <- map["tokenfirebase"]
      
    }
}
