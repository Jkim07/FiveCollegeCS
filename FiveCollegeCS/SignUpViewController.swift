//
//  SignUpViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    //var email:String = ""
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    
    @IBAction func doneButton(_ sender: Any) {
        
        let inputEmail=emailInput.text
        let inputPassword=passwordInput.text
        let inputFirstName=firstNameInput.text
        let inputLastName=lastNameInput.text
        
        let insertStatementString = "INSERT INTO users (username, password, first_name, last_name) VALUES (?, ?, ?, ?);"
        
        func insert() {
            var insertStatement: OpaquePointer? = nil
            
            // 1
            if sqlite3_prepare_v2(db, insertStatementString, -1, &insertStatement, nil) == SQLITE_OK {
                let user: NSString? = inputEmail as! NSString
                let pass: NSString? = inputPassword as! NSString
                let first: NSString? = inputFirstName as! NSString
                let last: NSString? = inputLastName as! NSString
                
                // 3
                sqlite3_bind_text(insertStatement, 1, user?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 2, pass?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 3, first?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 4, last?.utf8String, -1, nil)
                
                // 4
                if sqlite3_step(insertStatement) == SQLITE_DONE {
                    print("Successfully inserted row.")
                } else {
                    print("Could not insert row.")
                }
            } else {
                print("INSERT statement could not be prepared.")
            }
            // 5
            sqlite3_finalize(insertStatement)
        }
        insert()
        
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
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
