//
//  CircleImageView.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/21/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {

    override func awakeFromNib() {
        layer.cornerRadius = frame.width/2
        layer.shadowColor = UIColor.white.cgColor
        layer.shadowOffset = CGSize(width: 16, height: 16)
        layer.shadowRadius = 16.0
        layer.shadowOpacity = 16.0
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }

}
