
//
//  VIews.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit


extension UINavigationBar {
 
    
    func  transpatentNavigation(){
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
        isTranslucent = true
        backgroundColor = UIColor.clear
        
        
    }
}

extension UIViewController {
  func  gradientView(){
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: UIApplication.shared.statusBarFrame.width, height: UIApplication.shared.statusBarFrame.height + self.navigationController!.navigationBar.frame.height)
        gradient.startPoint = CGPoint(x : 0, y : 0.5);
        gradient.endPoint = CGPoint(x : 1.0, y: 0.5);
        gradient.colors = [UIColor.boldGreenColor.cgColor, UIColor.greenColor.cgColor]
        self.view.layer.addSublayer(gradient)
        self.view.backgroundColor = UIColor.clear
    }
}
