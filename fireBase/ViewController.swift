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
    
    let registerButton: UIButton = { //el closure es por que se crea la instancia del objeto y se asigna a la variable
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(red: 232/255, green: 173/255, blue: 72/255, alpha: 1.0)
        btn.translatesAutoresizingMaskIntoConstraints = false //para poder usar los constraints
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitle("Registro", for: .normal)
        return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 30/255, green: 62/255, blue: 106/255, alpha: 1.0)
        
        setupLayout()
    }
    
    func setupLayout(){
        view.addSubview(formContainerView)
        view.addSubview(registerButton)

        formContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        formContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        formContainerView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButton.centerYAnchor.constraint(equalTo: formContainerView.bottomAnchor, constant: 50).isActive = true
        registerButton.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50)
    }

}

