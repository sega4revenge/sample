//
//  LoginButton.swift
//  sample
//âfs
//  Created by Tô tử Siêu on 5/9/18.
//  Copyright © 2018 Tô tử Siêu. All rights reserved.
//

import UIKit



class LoginButton: UIButton {
    let kLoginButtonBackgroundColor = UIColor.self(displayP3Red: 236/255, green: 64/255, blue: 122/255, alpha: 1)
    let kLoginButtonTintColor = UIColor.white
    let kLoginButtonCornerRadius: CGFloat = 20.0
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureUI()
        
    }
    
    private func configureUI() {
        self.backgroundColor = kLoginButtonBackgroundColor
        self.layer.cornerRadius = kLoginButtonCornerRadius
        self.tintColor = kLoginButtonTintColor
        self.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 14)
    }
    
}
