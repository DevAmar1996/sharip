//
//  CustomSignInButton.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class CustomSignInButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 20
        backgroundColor = UIColor.lightgreenColor
        setTitleColor(UIColor.white, for: .normal)
    }

}
