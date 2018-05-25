//
//  RegisterViewController.swift
//  sample
//
//  Created by Tô tử Siêu on 5/14/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
class RegisterViewController: UIViewController {
    
    //      @IBOutlet var productViewModel: ProductViewModel!
        @IBOutlet var userViewModel: UserViewModel!
    @IBOutlet var tf_name: DesignableUITextField!
    @IBOutlet var tf_phone: DesignableUITextField!
    @IBOutlet var tf_email: DesignableUITextField!
    @IBAction func btn_register(_ sender: LoginButton) {
        let user = User(name: tf_name.text, email: tf_email.text, phone: tf_phone.text, tokenfirebase: "dfhdfhfdhdfhjjgjg")
        
                    userViewModel = UserViewModel()
        
                self.userViewModel.registerUser(user: user) {
                  
                
                    let popup = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dialog_phoneconfirm") as! PhoneConfirmViewController
                    if self.userViewModel.status == 202 {
                        popup.alreadyphone = self.tf_phone.text
                        popup.tokenfirebase = user.tokenfirebase
                    }
                    self.addChildViewController(popup)
                    popup.view.frame = self.view.frame
                    self.view.addSubview(popup.view)
                    popup.didMove(toParentViewController: self)
                }
        //        productViewModel = ProductViewModel()
        //        self.productViewModel.downloadProduct {
        //            print(self.productViewModel._productList.count)
        //        }
      
        //           performSegue(withIdentifier: "show_listview", sender: self)
        
    }
    @IBAction func btn_backLogin(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
