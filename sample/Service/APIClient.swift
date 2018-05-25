//
//  APIClient.swift
//  sample
//
//  Created by Tô tử Siêu on 5/17/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit

import Foundation
import Alamofire
import AlamofireObjectMapper

typealias DownloadComplete = () -> ()
// this API Clicent will be called by the viewModel to get our top 10 users from API.
class APIClient: NSObject {
    
   
    var response = Response()
    var user = User()
    var status : String?
    
    // to download users data Json from the API
    func downloadUser(complete: @escaping DownloadComplete) {
        let parameters: [String: Any] = [
            "name" : "Sega Nightshade",
            "phone" : "0906451265478",
            "email" : "sega4revenge123@gmail.com",
            "type" : 0,
            "tokenfirebase": "ewfewfjekwfhewfhewfhejwfhjewhfjehwfhewiufheiuwfhiuewfhiew"
        ]
        Alamofire.request("http://45.77.36.109:8070/api/v1/users", method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<Response>) in
            
            let repo = response.result.value
            self.response = repo!
             complete()
            
        }
    
    }
    func confirmphone(user: User) -> String! {
        let parameters: [String: Any] = [
            "name" : user.name!,
            "phone" : user.phone!,
            "email" : user.email!,
            "type" : 0,
            "tokenfirebase": "ewfewfjekwfhewfhewfhejwfhjewhfjehwfhewiufheiuwfhiuewfhiew"
        ]
         print("bat dau")
        Alamofire.request("http://45.77.36.109:8070/api/v1/users", method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<Response>) in
            
            let repo = response.result.value
            self.response = repo!
            print(self.response.status)
           self.status = self.response.status
           
        }
        return "fdgfdh"
    }
    
}
