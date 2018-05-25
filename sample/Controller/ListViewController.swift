//
//  ListViewController.swift
//  sample
//
//  Created by Tô tử Siêu on 5/18/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var productViewModel: ProductViewModel!
 
    @IBOutlet var table_view: UITableView!
    
    override func viewDidLoad() {
       print("bat dau")
      
        productViewModel = ProductViewModel()
        self.productViewModel.downloadProduct {
            self.table_view.delegate = self
            self.table_view.dataSource = self
            print(self.productViewModel._productList.count)
            self.table_view.reloadData()
        }
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return self.productViewModel._productList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
  
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        print(self.productViewModel._productList[indexPath.row].productname! + " dfhfdfjg ")
        let cell = table_view.dequeueReusableCell(withIdentifier: "customcell") as! ListTableViewCell
        cell.cell.layer.cornerRadius = cell.cell.frame.height / 2
        cell.product_name.text = self.productViewModel._productList[indexPath.row].productname!
  
        cell.product_price.text = self.productViewModel._productList[indexPath.row].price!
        return cell
    }
}
