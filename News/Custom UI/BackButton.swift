//
//  BackButton.swift
//  News
//
//  Created by Hồ Sĩ Tuấn on 8/4/20.
//  Copyright © 2020 Hồ Sĩ Tuấn. All rights reserved.
//

import UIKit

class BackButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 5
        self.setImage(UIImage(named: "back"), for: UIControl.State.normal)
    }

}
