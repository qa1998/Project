//
//  NewCollectionViewCell.swift
//  CosmeticApp
//
//  Created by QuangAnh on 1/1/20.
//  Copyright © 2020 QuangAnh. All rights reserved.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {
    var products = [Product]()

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var containerView: UIView!
    let indetifer = "NewCollectionViewCell"

    @IBOutlet weak var txtPrice: UILabel!
    @IBOutlet weak var titleProduct: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerView.layer.borderWidth = 0.6
        containerView.layer.borderColor = UIColor.gray.cgColor
        
        
    }

}
