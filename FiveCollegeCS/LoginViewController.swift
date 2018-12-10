//
//  LoginViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit
import SQLite3

class LoginViewController: UIViewController {
   
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginValidationLabel: UILabel!
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let inputEmail=email.text
        let inputPassword=password.text
        
        let queryStatementString = "SELECT * FROM users WHERE username = '" + inputEmail! + "' AND password = '" + inputPassword! + "'"
        
        func query() {
            var queryStatement: OpaquePointer? = nil
            // 1
            print("In query statement")
            if sqlite3_prepare_v2(db, queryStatementString, -1, &queryStatement, nil) == SQLITE_OK {
                // 2
                if sqlite3_step(queryStatement) == SQLITE_ROW {
//                    loginButton0.isEnabled = true
                    // 3
                    let id = sqlite3_column_int(queryStatement, 0)
                    
                    // 4
                    let queryResultCol1 = sqlite3_column_text(queryStatement, 1)
                    let username = String(cString: queryResultCol1!)
                    
                    // 5
                    print("Query Result:")
                    print("Person Exists: id =\(id) | email=\(username)")
                    performSegue(withIdentifier: "login", sender: self)
                } else {
                    print("Query returned no results")
                    //loginButton0.isEnabled = false
                    loginValidationLabel.isHidden = false
                    loginValidationLabel.text = "Enter a valid email and password combination"
                }
            } else {
                print("SELECT statement could not be prepared")
                loginValidationLabel.isHidden = false
                loginValidationLabel.text = "error"
                
            }
            
            // 6
            sqlite3_finalize(queryStatement)
        }
        if inputEmail!.isEmpty{
            loginValidationLabel.isHidden = false
            loginValidationLabel.text = "Enter your account email"
        }else if inputPassword!.isEmpty{
            loginValidationLabel.isHidden = false
            loginValidationLabel.text = "Enter your account password"
        }else{
        query()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginValidationLabel.isHidden = true
    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
