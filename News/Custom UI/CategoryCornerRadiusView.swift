//
//  CategoryCornerRadiusView.swift
//  News
//
//  Created by Hồ Sĩ Tuấn on 8/5/20.
//  Copyright © 2020 Hồ Sĩ Tuấn. All rights reserved.
//

import UIKit

class CategoryCornerRadiusView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let borderColor : UIColor = UIColor(rgb: 0xA0A5B5)
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.borderColor = borderColor.cgColor
        self.isUserInteractionEnabled = true
    }

    
}
