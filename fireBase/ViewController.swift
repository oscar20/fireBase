//
//  ViewController.swift
//  fireBase
//
//  Created by d182_oscar_a on 05/05/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let formContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 30/255, green: 62/255, blue: 106/255, alpha: 1.0)
        
        setupLayout()
    }
    
    func setupLayout(){
        view.addSubview(formContainerView)
        formContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        formContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        formContainerView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        
    }

}

