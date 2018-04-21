//
//  FilterVC.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class FilterVC: UIViewController {

    @IBOutlet weak var oneStar: RadioButton!
    @IBOutlet weak var twoStar: RadioButton!
    @IBOutlet weak var threeStar: RadioButton!
    @IBOutlet weak var fourStar: RadioButton!
    @IBOutlet weak var fiveStar: RadioButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
        // Do any additional setup after loading the view.
    }
    
    private func setUpView(){
        fourStar.isSelected = false
        threeStar.isSelected = false
        twoStar.isSelected = false
        oneStar.isSelected = false
        fiveStar.isSelected = true
        fourStar.alternate = [fiveStar ,twoStar ,threeStar,oneStar]
        fiveStar.alternate = [fourStar , oneStar , twoStar , threeStar]
        oneStar.alternate = [fourStar , fiveStar , twoStar ,threeStar]
        twoStar.alternate = [fourStar , threeStar , oneStar , fiveStar]

    }

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
