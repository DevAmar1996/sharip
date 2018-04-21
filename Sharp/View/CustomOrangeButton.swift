//
//  CustomOrangeButton.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/21/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class CustomOrangeButton: UIButton {
    override func awakeFromNib() {
        backgroundColor = UIColor.orangeColor
        setTitleColor(UIColor.white, for: .normal)
        layer.cornerRadius = 15
        contentEdgeInsets = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
    }

}
