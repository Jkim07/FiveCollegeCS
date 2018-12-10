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
        
        if inputFirstName!.isEmpty && inputLastName!.isEmpty {
            name_requirement = false
        }else{
            name_requirement = true
        }
        
        if inputEmail!.isEmpty {
            email_requirement = false
        }else{
        email_requirement = true
        }
        
        if inputPassword!.isEmpty {
            password_requirement = false
        }else{
            password_requirement = true
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

//        let ttl = self.firstNameInput.text!.isEmpty
//            ? "Return"
//            : "Congrats"
//
//        let msg = self.firstNameInput.text!.isEmpty
//            ? "You are not meeting the sign up requirements."
//            : "You've successfully signed up."
//
////        let styl = self.firstNameInput.text!.isEmpty
////            ? .cancel
////            : .default
//
//        let controller = UIAlertController(title: ttl,
//                                           message:msg, preferredStyle: .alert)
//
//
//        let okAction = UIAlertAction(title: "OK",
//                                         style: .default,
//                                         handler: { _ in
//                                            self.performSegue(withIdentifier: "done", sender: self)
//        })
//
//
//
//
//
//        controller.addAction(okAction)
//
//        if let ppc = controller.popoverPresentationController {
//            ppc.sourceView = sender as! UIView
//            ppc.sourceRect = (sender as AnyObject).bounds
//        }
//        present(controller, animated: true, completion: nil)
//        if ttl == "Congrats" {
//            performSegue(withIdentifier: "done", sender: self)
//        }
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
