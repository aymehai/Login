//
//  ViewController.swift
//  Login
//
//  Created by Aymen on 6/28/18.
//  Copyright © 2018 Aymen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotPasswordButton)
    }
    
    @IBAction func forgotUsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotUsernameButton)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsernameButton {segue.destination.navigationItem.title = "Sign Up"
        }
        else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
        
    }
}

