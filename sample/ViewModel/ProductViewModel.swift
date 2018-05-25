//
//  ProductViewModel.swift
//  sample
//
//  Created by Tô tử Siêu on 5/18/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
class ProductViewModel: NSObject {

    var _productList = [Product] ()
    func downloadProduct(complete: @escaping DownloadComplete) {
        let parameters = [
            "category": 1,
            "page" : 10,
            "type" : 1
        ]
        Alamofire.request("http://45.77.36.109:8070/api/v1/allproduct", method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<Response>) in
            
            let repo = response.result.value
            self._productList = repo!.listproduct!
            print(self._productList.count)
            complete()
        }
        
        
    }
}
