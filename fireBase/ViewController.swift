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
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn.layer.cornerRadius = 5
        btn.layer.masksToBounds = true
        
        return btn
    }()
    
    
    let emailTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Correo electronico"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    
    let passwordTextField : UITextField = {
        let pf = UITextField()
        pf.placeholder = "Password"
        pf.translatesAutoresizingMaskIntoConstraints = false
        pf.isSecureTextEntry = true
        
        return pf
        
    }()
    
    let formSegmentedControl: UISegmentedControl = {
        let sg = UISegmentedControl(items: ["Login","Register"])
        sg.translatesAutoresizingMaskIntoConstraints = false
        sg.selectedSegmentIndex = 1
        sg.tintColor = UIColor.white
        return sg
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 30/255, green: 62/255, blue: 106/255, alpha: 1.0)
        
        setupLayout()
    }
    
    func setupLayout(){
        view.addSubview(formContainerView)
        view.addSubview(registerButton)
        view.addSubview(formSegmentedControl)
        formContainerView.addSubview(emailTextField)
        formContainerView.addSubview(passwordTextField)

        formContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        formContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        formContainerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButton.centerYAnchor.constraint(equalTo: formContainerView.bottomAnchor, constant: 50).isActive = true
        registerButton.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        emailTextField.leftAnchor.constraint(equalTo: formContainerView.leftAnchor,constant: 10).isActive = true
        emailTextField.topAnchor.constraint(equalTo: formContainerView.topAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.leftAnchor.constraint(equalTo: formContainerView.leftAnchor, constant: 10).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        formSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formSegmentedControl.bottomAnchor.constraint(equalTo: formContainerView.topAnchor, constant: -15).isActive = true
        formSegmentedControl.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        formSegmentedControl.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }

}

