//
//  HomeVC.swift
//  CosmeticApp
//
//  Created by QuangAnh on 12/27/19.
//  Copyright © 2019 QuangAnh. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    var view1 = UIView()
    var view2 = UIView()
    var tableView = UITableView()
    var imageView = UIImageView()
    
    
    var sections = ["Shopping Now","Hàng mới về","Mọi người quan tâm"]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
        setupLayout()
    }
    func setupLayout(){
        view1.containerView()
        view2.containerView()
        view.addSubview(view1)
        view.addSubview(view2)
        
        view1.addSubview(imageView)
        imageView.createImage(name: "banner")
        imageView.topAnchor.constraint(equalTo: view1.topAnchor, constant: 0).isActive = true
        imageView.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 0).isActive = true
        imageView.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: 0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: 0).isActive = true
        imageView.layer.cornerRadius = 10
        
        view1.backgroundColor = .red
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        view1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4).isActive = true
        
        view2.backgroundColor = .brown
        view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 0).isActive = true
        view2.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 0).isActive = true
        view2.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: 0).isActive = true
        view2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        view2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 3/4).isActive = true
        
        view2.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view2.topAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view2.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: 0).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView.register(NewCell.self, forCellReuseIdentifier: "newcell")
        tableView.register(NowCell.self, forCellReuseIdentifier: "nowcell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(CareCell.self, forCellReuseIdentifier: "carecell")
        
        
        
    }
}
extension HomeVC:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else{
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "newcell", for: indexPath) as! NewCell
            
            return cell
        }else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "nowcell", for: indexPath) as! NowCell
            return cell
        }else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "carecell", for: indexPath) as! CareCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            return cell
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 50))
        //        view.backgroundColor = .red
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: tableView.bounds.width - 15 , height: 40))
        view.addSubview(label)
        view.backgroundColor = #colorLiteral(red: 0.5256031156, green: 0.1524448395, blue: 0.1676963568, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = UIColor.white
        label.center.y = view.center.y
        if section == 0 {
            label.text = sections[0]
        } else if section == 1 {
            label.text = sections[1]
        }else{
            label.text = sections[2]
        }
        
        
        
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 230
        }
        else if indexPath.section == 1{
            return 230
        }else if indexPath.section == 2 {
            return 230
        }else{
            return UITableView.automaticDimension
        }
    }
    
}
