//
//  ViewController.swift
//  sample
//
//  Created by Tô tử Siêu on 5/7/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {


 var a = 1
    @IBAction func btn_toRegister(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segue_toRegister", sender: self)
     
    }
    
    @IBOutlet var phone: DesignableUITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        
        //To apply corner radius

        self.navigationController?.isNavigationBarHidden = true

        
        //To apply Shadow
      

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

