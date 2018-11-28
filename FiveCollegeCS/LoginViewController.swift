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
    
    @IBOutlet weak var loginButton0: UIButton!
    
    @IBAction func loginButton(_ sender: UIButton) {
        //grab user email input
        let inputEmail=email.text
        let inputPassword=password.text
        
        let queryStatementString = "SELECT * FROM users WHERE username = '" + inputEmail! + "' AND password = '" + inputPassword! + "'"
        
        
        func query() {
            var queryStatement: OpaquePointer? = nil
            // 1
            if sqlite3_prepare_v2(db, queryStatementString, -1, &queryStatement, nil) == SQLITE_OK {
                // 2
                if sqlite3_step(queryStatement) == SQLITE_ROW {
                    loginButton0.isEnabled = true
                    // 3
                    let id = sqlite3_column_int(queryStatement, 0)
                    
                    // 4
                    let queryResultCol1 = sqlite3_column_text(queryStatement, 1)
                    let username = String(cString: queryResultCol1!)
                    
                    // 5
                    print("Query Result:")
                    print("Person Exists: id =\(id) | email=\(username)")
                    
                } else {
                    print("Query returned no results")
                    //loginButton0.isEnabled = false
                }
            } else {
                print("SELECT statement could not be prepared")
            }
            
            // 6
            sqlite3_finalize(queryStatement)
        }
        query()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
