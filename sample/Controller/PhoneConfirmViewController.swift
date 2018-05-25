//
//  PhoneConfirmViewController.swift
//  sample
//
//  Created by Tô tử Siêu on 5/23/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit

class PhoneConfirmViewController: UIViewController {
      @IBOutlet var userViewModel: UserViewModel!
    @IBOutlet var alreadyphone : String!
     @IBOutlet var tokenfirebase : String!
    @IBOutlet var popupview: UIView!
    @IBOutlet var edt_phone: DesignableUITextField!
    @IBOutlet var edt_code: DesignableUITextField!
    @IBAction func action_confirmphone(_ sender: Any) {
        self.userViewModel.confirmPhone(phone: edt_phone.placeholder!, code: edt_code.text!,token : tokenfirebase){
            print(self.userViewModel.status!)
            print((self.parent as! RegisterViewController).navigationController?.popViewController(animated: true))
            self.removeAnimate()
        }
    }
    @IBAction func close_Popup(_ sender: Any) {
        self.removeAnimate()

    }
    override func viewDidLoad() {
       
        super.viewDidLoad()
        self.userViewModel = UserViewModel()
        popupview.layer.cornerRadius = 10
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
        if(alreadyphone != nil || alreadyphone != "")
        {
            edt_phone.placeholder = alreadyphone
            edt_phone.isUserInteractionEnabled = false
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
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
