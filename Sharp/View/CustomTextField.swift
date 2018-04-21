//
//  CustomTextField.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/21/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    override func awakeFromNib() {
        layer.shadowColor = UIColor.lightBLue.cgColor
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.shadowRadius = 4.0
        layer.shadowOpacity = 4.0
    }
}
