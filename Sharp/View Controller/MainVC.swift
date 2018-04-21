//
//  MainVCViewController.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class MainVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    
    private func setUpView(){
        self.navigationController?.navigationBar.addGradientLayer()
    }
    

}
