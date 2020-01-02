//
//  Model.swift
//  CosmeticApp
//
//  Created by QuangAnh on 1/1/20.
//  Copyright © 2020 QuangAnh. All rights reserved.
//

import Foundation
import UIKit
class Product {
    var name :String
    var price :String
    var image :UIImage
    init(name:String,price:String,image:UIImage) {
        self.name = name
        self.price = price
        self.image = image
    }
}
