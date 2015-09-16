//
//  ViewController.swift
//  ios-swift-guardTests
//
//  Created by Daniel Spiess on 9/8/15.
//  Copyright © 2015 Daniel Spiess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameEdit: UITextField!
    
    @IBOutlet weak var emailEdit: UITextField!
    
    @IBOutlet weak var passwordEdit: UITextField!
    
    @IBOutlet weak var confirmEdit: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerOnTouch(sender: UIButton) {
        if let name = nameEdit.text {
            if let email = emailEdit.text {
                if let password = passwordEdit.text {
                    if let confirm = confirmEdit.text {
                        if (password == confirm) {
                            registerUser(name, email, password)
                        }
                    } else {
                        print("Bad confirm")
                    }
                } else {
                    print("Bad password")
                }
            } else {
                print("Bad email")
            }
        } else {
            print("Bad name")
        }
    }
    
    @IBAction func registerOnTouch2(sender: UIButton) {
        if let name = nameEdit.text where name == "" {
            print("Bad name")
            return
        }
        
        if let email = emailEdit.text where email == "" {
            print("Bad email")
            return
            
        }
        
        if let password = passwordEdit.text where password == "",
           let confirm = confirmEdit.text where confirm != password {
            print("Bad password")
            return
        }
        
        // Have to force unwrapping again!?!?
        registerUser(nameEdit.text!, emailEdit.text!, passwordEdit.text!)
    }

    @IBAction func registerOnTouch3(sender: UIButton) {
        guard let name = nameEdit.text where name != "" else {
            print("Bad name")
            return
        }
        
        guard let email = emailEdit.text where email != "" else {
            print("Bad email")
            return
            
        }
        
        guard let password = passwordEdit.text where password != "",
            let confirm = confirmEdit.text where confirm == password else {
                print("Bad password")
                return
        }
        
        // We can use the unwrapped variables!!
        registerUser(name, email, password)
    }
    
    @IBAction func registerOnTouch4(sender: UIButton) {
        guard let name = nameEdit.text where name != "",
              let email = emailEdit.text where email != "",
              let password = passwordEdit.text where password != "",
              let confirm = confirmEdit.text where confirm == password else {
            print("Bad input")
            return
        }
        
        // We can use the unwrapped variables!!
        registerUser(name, email, password)
    }

    
    func registerUser(username :String, _ email: String, _ password: String) -> Bool {
        return true
    }

}

