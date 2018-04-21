//
//  ProfileVC.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/21/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        // Do any additional setup after loading the view.
    }

    
    private func setUpView(){
        self.navigationController?.navigationBar.transpatentNavigation()
        gradientView()
        
    }
}
