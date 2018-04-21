//
//  CustomTopRoundedView.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class CustomTopRoundedView: UIView {

    override func awakeFromNib() {
        clipsToBounds = true
        layer.cornerRadius = 10
        layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }

}
