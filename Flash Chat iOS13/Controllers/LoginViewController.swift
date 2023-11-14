//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Alerta", message: "test", preferredStyle: .alert)
        let action = UIAlertAction(title: "Aceptar", style: .cancel, handler: nil)
        alert.addAction(action)
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
              
                if let e = error {
                    alert.message = e.localizedDescription
                    print("error---")
                    print(e)
                    DispatchQueue.main.async {
                        self!.present(alert, animated: true, completion: nil)
                    }
                }
                else{
                    print("--------------")
                    print(authResult!)
                    self!.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
                
                
            }
        }
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginToChat" {
            var vcDestination = segue.destination as! ChatViewController
            
        }
    }
}
