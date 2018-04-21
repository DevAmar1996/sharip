//
//  RadioButton.swift
//  Sharp
//
//  Created by Amar Amassi  on 4/20/18.
//  Copyright © 2018 Amar Amassi . All rights reserved.
//

import UIKit

class RadioButton: UIButton {
    
    var alternate : Array<RadioButton>?
    
    
    
    func unSelectAlternate(){
        if alternate != nil {
            self.isSelected = true;
            
            for aButton:RadioButton in alternate! {
                aButton.isSelected = false;
            }
        }else{
            print("nil alternate")
            toggleBtn()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unSelectAlternate();
        super.touchesBegan(touches, with: event)
    }
    
    private func toggleBtn(){
        self.isSelected = !isSelected
    }
    
    override var isSelected :Bool {
        didSet {
            if(!isSelected){
                self.setBackgroundImage(UIImage(named : "unChecked"), for: .normal);
            }else{
                //self.isSelected = true;
                self.setBackgroundImage(UIImage(named : "checked"), for: .normal);
            }
        }
    }
    
    
    
}
