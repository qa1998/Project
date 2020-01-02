//
//  CareCell.swift
//  CosmeticApp
//
//  Created by QuangAnh on 1/1/20.
//  Copyright © 2020 QuangAnh. All rights reserved.
//

import UIKit

class CareCell: UITableViewCell {

    let colectionView = UICollectionView(frame: .zero,collectionViewLayout: UICollectionViewFlowLayout())
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
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
        
        colectionView.register(UINib(nibName: "CareCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CareCollectionViewCell")
        
        
    }
    
}
extension CareCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colectionView.dequeueReusableCell(withReuseIdentifier: "CareCollectionViewCell", for: indexPath) as! CareCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height:CGFloat = self.bounds.height
        
        return CGSize(width: height, height: height)
    }
    
    
}

