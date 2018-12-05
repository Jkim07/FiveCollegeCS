//
//  SignUpViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    var email:String = ""
    @IBOutlet weak var emailInput: UITextField!
    @IBAction func emailButton(_ sender: Any) {
       //email = emailInput.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        emailInput?.text = email
        
        // Do any additional setup after loading the view.
        //self.nextButton.layer.cornerRadius = 5
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
