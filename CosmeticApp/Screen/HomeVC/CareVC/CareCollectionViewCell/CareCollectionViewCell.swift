//
//  CareCollectionViewCell.swift
//  CosmeticApp
//
//  Created by QuangAnh on 1/1/20.
//  Copyright © 2020 QuangAnh. All rights reserved.
//

import UIKit

class CareCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerView.layer.borderWidth = 0.8
        containerView.layer.borderColor = UIColor.gray.cgColor
    }

}
