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
//                    print(user)
//                    print(pass)
//                    print(first)
//                    print(last)
                    
                } else {
                    print("Could not insert row.")
                    let ttl = "Return"
                    let msg = "An error has occured while we were processing your request."

                    let controller = UIAlertController(title: ttl,
                                                       message:msg, preferredStyle: .alert)
                    
                    let okAction = UIAlertAction(title: "cancel",
                                                 style: .cancel,
                                                 handler: nil)
                    
                    controller.addAction(okAction)
                    
                    if let ppc = controller.popoverPresentationController {
                        ppc.sourceView = sender as! UIView
                        ppc.sourceRect = (sender as AnyObject).bounds
                    }
                    present(controller, animated: true, completion: nil)
                }
            } else {
                print("INSERT statement could not be prepared.")
            }
            // 5
            sqlite3_finalize(insertStatement)
        }
        
        //set sign up information requirements
        var name_requirement = false
        var email_requirement = false
        var password_requirement = false
        
        //name requirements
        if inputFirstName!.isEmpty && inputLastName!.isEmpty {
            name_requirement = false
        }else{
            name_requirement = true
        }
        
        //email requirements
        func isValidEmail(emailID:String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: emailID)
        }
        
        
        if inputEmail!.isEmpty {
            email_requirement = false
        }else{
            //check if email is a five college email
            if (inputEmail?.contains("@smith.edu"))! {
                print("I found: @smith.edu")
                print(inputEmail as Any)
                email_requirement = true
            }
            if (inputEmail?.contains("@umass.edu"))! {
                print("I found: @umass.edu")
                print(inputEmail as Any)
                email_requirement = true
            }
            if (inputEmail?.contains("@hampshire.edu"))! {
                print("I found: @hampshire.edu")
                print(inputEmail as Any)
                email_requirement = true
            }
            if (inputEmail?.contains("@amherst.edu"))! {
                print("I found: @amherst.edu")
                print(inputEmail as Any)
                email_requirement = true
            }
            if (inputEmail?.contains("@mtholyoke.edu"))! {
                print("I found: @mtholyoke.edu")
                print(inputEmail as Any)
                email_requirement = true
            }
            if isValidEmail(emailID:inputEmail!) == false{
                email_requirement  = false
                print("This is not a valid email address.")
            }
        }
        
        //password requirements
        func isValidPassword(testStr:String?) -> Bool {
            guard testStr != nil else { return false }
            // at least one uppercase,
            // at least one digit
            // at least one lowercase
            // 8 characters total
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
            return passwordTest.evaluate(with: testStr)
        }
        
        if inputPassword!.isEmpty {
            password_requirement = false
        }else if isValidPassword(testStr:inputPassword!) == false{
            password_requirement  = false
            print("This is not a valid password.")
        }else{
            password_requirement = true
            print(inputPassword)
            print("This is a valid password.")
        }
        
        //if the information meets all the requirements, insert the information
        if name_requirement==true && email_requirement==true && password_requirement==true {
            print("data fields met all the requirements")
            insert()
            let ttl = "Congrats"
            let msg = "You've successfully signed up."
            
            let controller = UIAlertController(title: ttl,
                                               message:msg, preferredStyle: .alert)
            
            
            let okAction = UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: { _ in
                                            self.performSegue(withIdentifier: "done", sender: self)
            })
            
            controller.addAction(okAction)
            
            if let ppc = controller.popoverPresentationController {
                ppc.sourceView = sender as! UIView
                ppc.sourceRect = (sender as AnyObject).bounds
            }
            present(controller, animated: true, completion: nil)
            if ttl == "Congrats" {
                performSegue(withIdentifier: "done", sender: self)
            }
            
        }else{
            print("missing information or data fields not matching the requirements.")

            
            let controller = UIAlertController(title: "Return",
                                               message:"missing information or data fields not matching the requirements.", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "cancel",
                                         style: .cancel,
                                         handler: nil)
            
            controller.addAction(okAction)
            
            if let ppc = controller.popoverPresentationController {
                ppc.sourceView = sender as! UIView
                ppc.sourceRect = (sender as AnyObject).bounds
            }
            present(controller, animated: true, completion: nil)
        }


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
