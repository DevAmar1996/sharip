//
//  CustomGrayButton.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class CustomGrayButton: UIButton {

    override func awakeFromNib() {
        backgroundColor = UIColor.clear
        layer.borderWidth = 1
        layer.borderColor = UIColor.grayColor.cgColor
        setTitleColor(UIColor.grayColor, for: .normal)
        layer.cornerRadius = 10
        contentEdgeInsets = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
    }

}
