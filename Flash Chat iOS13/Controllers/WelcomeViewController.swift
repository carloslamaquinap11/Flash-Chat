//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
//    @IBAction func loginPressed(_ sender: UIButton) {
//        
//        self.performSegue(withIdentifier: "goToLogin", sender: self)
//    }
//    @IBAction func pressedRegister(_ sender: UIButton) {
//        
//        self.performSegue(withIdentifier: "goToRegister", sender: self)
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLogin" {
            var vcDestination = segue.destination as! LoginViewController
        }
    }

}
