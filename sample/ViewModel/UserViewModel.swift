//
//  UserViewModel.swift
//  sample
//
//  Created by Tô tử Siêu on 5/17/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
typealias DownloadComplete = () -> ()
class UserViewModel: NSObject {
    //Create apiClient property that we can use to call in our API Call.
    //This apiClient property is marked as an @IBOutlet so that we can instantiate it from the storyboard.  I mark this with a bang operator (!) since I know it will not be nil since the storyboard will be injecting it.
    var user : User = User()
  
    var status : Int?
  

    func downloadUser(id: String,complete: @escaping DownloadComplete) {
      
        Alamofire.request("http://45.77.36.109:8070/api/v1/data/"+id, method: .get,encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<User>) in
            
            let repo = response.result.value
            self.user = repo!
           print(response.result.value!)
            complete()
        }
      
        
    }
    func registerUser(user : User,complete : @escaping DownloadComplete){
        let parameters = [
            "name": user.name,
            "email" : user.email,
            "phone" : user.phone,
            "password" : "dfhfdhjdfjgjgjkkhgkl",
             "photoprofile" : "dfhfdhjdhsdfdfjfdjdfdfjgjgjkkhgkl",
            "type" : "1",
            "tokenfirebase" : "terjterjtert34tnj34t34t34tryery",
        ]
      
        Alamofire.request("http://45.77.36.109:8070/api/v1/linkaccount", method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<Response>) in
            
            let repo = response.result.value
            self.status = repo?.status
            print(response.result.value!)
            complete()
        }
    }
    func confirmPhone(phone : String,code : String,token : String,complete : @escaping DownloadComplete){

        let parameters : [String: Any] = [
            "phone" : phone,
            "code" : code,
            "type" : 0,
            "token" : token,
            ]
        
        Alamofire.request("http://45.77.36.109:8070/api/v1/registerfinish", method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<Response>) in
            let repo = response.result.value
            self.status = response.response?.statusCode
            print(response.result.value!)
            complete()
        }
    }
    
    
    
}
