//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alerta", message: "test", preferredStyle: .alert)
        let action = UIAlertAction(title: "Aceptar", style: .cancel, handler: nil)
        alert.addAction(action)
        
        if let email = emailTextfield.text , let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    alert.message = e.localizedDescription
                    DispatchQueue.main.async {
                        self.present(alert, animated: true, completion: nil)
                    }
                }
                else{
                    
                    
                    
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
                
            }
        }
        else{
//            let alert = UIAlertController(title: "Mi alerta", message: "Este es el mensaje de mi alerta", preferredStyle: .alert)
//            let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
//            alert.addAction(action)
            DispatchQueue.main.async {
                self.present(alert, animated: true, completion: nil)
            }
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RegisterToChat" {
            var vcDestination = segue.destination as! ChatViewController
        }
    }
}
