//
//  CustomOrangeView.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/21/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class CustomOrangeView: UIView {

    override func awakeFromNib() {
        backgroundColor = UIColor.orangeColor
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
    }
    

}
