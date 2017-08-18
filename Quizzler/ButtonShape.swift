//
//  ButtonShape.swift
//  Quizzler
//
//  Created by Daniel Travers on 12/08/2017.
//  Copyright © 2017 Daniel Travers. All rights reserved.
//

import UIKit

class ButtonShape: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.masksToBounds = false
        layer.cornerRadius = 6.0
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 6, height: 6)
        layer.shadowRadius = 6
        layer.shadowOpacity = 0.5
        
        
    }

}
