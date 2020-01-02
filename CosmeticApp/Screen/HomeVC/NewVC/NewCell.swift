//
//  NewCell.swift
//  CosmeticApp
//
//  Created by QuangAnh on 1/1/20.
//  Copyright © 2020 QuangAnh. All rights reserved.
//

import UIKit

class NewCell: UITableViewCell {
    let colectionView = UICollectionView(frame: .zero,collectionViewLayout: UICollectionViewFlowLayout())
    var products = [Product]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        createData()
        setupLayout()

        // Configure the view for the selected state
    }
    func setupLayout(){
        self.addSubview(colectionView)
        colectionView.backgroundColor = .white
        colectionView.translatesAutoresizingMaskIntoConstraints = false
        colectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        colectionView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        colectionView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        colectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        colectionView.delegate = self
        colectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        colectionView.setCollectionViewLayout(layout, animated: true)
        
//        colectionView.register(NewCollectionViewCell.self, forCellWithReuseIdentifier: "newcollectionviewcell")
        colectionView.register(UINib(nibName: "NewCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "newcollectionviewcell")
        
        
    }
    func createData(){
        let product1 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product2 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product3 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product4 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product5 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product6 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product7 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product8 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product9 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        let product10 = Product(name: "Son1", price: "123", image: UIImage(named: "lip")!)
        products = [product1,product2,product3,product4,product5,product6,product7,product8,product9,product10]
    }

}
extension NewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colectionView.dequeueReusableCell(withReuseIdentifier: "newcollectionviewcell", for: indexPath) as! NewCollectionViewCell
        cell.products = products
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height:CGFloat = self.bounds.height
        
        return CGSize(width: height, height: height)
    }
    
    
}
