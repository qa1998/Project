//
//  Extension.swift
//  CosmeticApp
//
//  Created by QuangAnh on 12/27/19.
//  Copyright © 2019 QuangAnh. All rights reserved.
//

import Foundation
import UIKit

//MARK: UIButton



extension UIView{
    func containerView(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.white
    }
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    
}
extension UIImageView{
    func createImage(name:String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: name)
        
    }
    func ic_Image(name:String,width:CGFloat,height:CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: name)
        self.frame.size.width = width
        self.frame.size.height = height
    }
    func circleImage(name:String){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: name)
        self.layer.cornerRadius = (self.frame.width / 2) //instead of let radius = CGRectGetWidth(self.frame) / 2
        self.layer.masksToBounds = true
    }
    
}

extension UITextField {
    func createTextField(placeholder:String) {
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    func underlineButton(){
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        self.alpha = 0.8
    }
    
    func addLeftView(name:String) {
        self.leftViewMode = .always
        let imageView = UIImageView()
        let image = UIImage(named: name)
        imageView.frame.size.width = 24
        imageView.frame.size.height = 24
        imageView.image = image
        self.leftView = imageView
        self.textAlignment = .center
        
    }
    func heightTextfield(height:CGFloat){
        self.heightAnchor.constraint(equalToConstant: height)
    }
}

extension UIButton{
    func createButton(title:String,boldOfSize:CGFloat,bgColor:UIColor) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: boldOfSize)
        self.backgroundColor = bgColor
        
    }
}

extension UILabel{
    func createLabel(text:String,color:UIColor){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textColor = color
        self.isUserInteractionEnabled = true
    }
}

extension UIStackView{
    func createStackView(axis:NSLayoutConstraint.Axis,aligment:UIStackView.Alignment,spacing:CGFloat,distribution:UIStackView.Distribution)  {
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
        self.axis = axis
        self.alignment = aligment
        self.spacing = spacing
        
    }
    
    
}
