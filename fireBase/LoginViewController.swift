//
//  LoginViewController.swift
//  fireBase
//
//  Created by d182_oscar_a on 05/05/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Salir", style: .plain, target: self, action: #selector(logoutUser))

    }
    
    @objc func logoutUser(){
        do{
            try Auth.auth().signOut()
            self.navigationController?.popViewController(animated: true)
            print("Saliendo...")
        }catch{
            print("Error...")
        }
    } //objc indica que va a ser ocupada por un selector


}
