//
//  FilterViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource  {
    
    //default value is that filter on for all categories
    var academics_filter = true
    var career_filter = true
    var orgs_filter = true
    var social_filter = true
    
    @IBOutlet weak var collegePicker: UIPickerView!
    @IBOutlet weak var selectedCollegeLabel: UILabel!
    
    @IBOutlet weak var academics_label: UILabel!
    @IBOutlet weak var career_label: UILabel!
    @IBOutlet weak var orgs_label: UILabel!
    @IBOutlet weak var social_label: UILabel!
    
    @IBOutlet weak var academics_img: UIImageView!
    @IBOutlet weak var career_img: UIImageView!
    @IBOutlet weak var orgs_img: UIImageView!
    @IBOutlet weak var social_img: UIImageView!
    
    @IBOutlet var academics_tap: UITapGestureRecognizer!
    @IBOutlet var academics_label_tap: UITapGestureRecognizer!
    @IBOutlet var career_tap: UITapGestureRecognizer!
    @IBOutlet var career_label_tap: UITapGestureRecognizer!

    @IBOutlet var orgs_tap: UITapGestureRecognizer!
    @IBOutlet var orgs_label_tap: UITapGestureRecognizer!
    
    @IBOutlet var social_tap: UITapGestureRecognizer!
    @IBOutlet var social_label_tap: UITapGestureRecognizer!
    
    @IBOutlet weak var filterButton: UIButton!
    private let schoolComponent = 0
    
    @IBAction func academics_label_tapped(_ sender: Any) {
        print("academic label tapped")
//        let tempImage = academics_img.image?.withRenderingMode(.alwaysTemplate)
//        academics_img.image = tempImage
        if academics_img.alpha == 0.5{
            academics_img.alpha = 1
            //academics_img.tintColor = UIColor(red:180,green:180,blue:180,alpha:1)
            //academics_img.backgroundColor = UIColor.light
            academics_filter = true
            
        }else{
            academics_img.alpha = 0.5
            //academics_img.backgroundColor = UIColor.clear
            academics_filter = false
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    @IBAction func academics_tapped(_ sender: Any) {
        print("academic tapped")
//        let tempImage = academics_img.image?.withRenderingMode(.alwaysTemplate)
//        academics_img.image = tempImage
        if academics_img.alpha == 0.5{
            academics_img.alpha = 1
            academics_filter = true
            //academics_img.tintColor = UIColor(red:180,green:180,blue:180,alpha:1)
        }else{
            academics_img.alpha = 0.5
            academics_filter = false
            //academics_img.tintColor = UIColor.lightGray
        }
    }

    @IBAction func career_tapped(_ sender: Any) {
        print("career tapped")
//        let tempImage = career_img.image?.withRenderingMode(.alwaysTemplate)
//        career_img.image = tempImage
        if career_img.alpha == 0.5{
            career_img.alpha = 1
            career_filter = true
            //career_img.tintColor = UIColor(red:230,green:82,blue:72,alpha:1)
        }else{
            career_img.alpha = 0.5
            career_filter = false
            //career_img.tintColor = UIColor.lightGray
        }
    }
    
    @IBAction func career_label_tapped(_ sender: Any) {
        print("career label tapped")
//        let tempImage = career_img.image?.withRenderingMode(.alwaysTemplate)
//        career_img.image = tempImage
        if career_img.alpha == 0.5{
            career_img.alpha = 1
            //career_img.tintColor = UIColor(red:230,green:82,blue:72,alpha:1)
            career_filter = true
        }else{
            career_img.alpha = 0.5
            career_filter = false
            //career_img.tintColor = UIColor.lightGray
        }
        
    }
    @IBAction func orgs_tapped(_ sender: Any) {
        print("orgs tapped")
//        let tempImage = orgs_img.image?.withRenderingMode(.alwaysTemplate)
//        orgs_img.image = tempImage
        if orgs_img.alpha == 0.5{
            orgs_img.alpha = 1
            //orgs_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            orgs_filter = true
        }else{
            orgs_img.alpha = 0.5
            orgs_filter = false
            //orgs_img.tintColor = UIColor.lightGray
        }
    }
    
    @IBAction func orgs_label_tapped(_ sender: Any) {
        print("orgs label tapped")
//        let tempImage = orgs_img.image?.withRenderingMode(.alwaysTemplate)
//        orgs_img.image = tempImage
        if orgs_img.alpha == 0.5{
            orgs_img.alpha = 1
            //orgs_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            orgs_filter = true
        }else{
            orgs_img.alpha = 0.5
            orgs_filter = false
            //orgs_img.tintColor = UIColor.lightGray
        }
    }
    @IBAction func social_tapped(_ sender: Any) {
        print("social tapped")
//        let tempImage = social_img.image?.withRenderingMode(.alwaysTemplate)
//        social_img.image = tempImage
        if social_img.alpha == 0.5{
            social_img.alpha = 1
            //social_img.tintColor = UIColor(red:124,green:213,blue:173,alpha:1)
            social_filter = true
        }else{
            social_img.alpha = 0.5
            social_filter = false
            //social_img.tintColor = UIColor.lightGray
        }
    }
    @IBAction func social_label_tapped(_ sender: Any) {
        print("social label tapped")
//        let tempImage = social_img.image?.withRenderingMode(.alwaysTemplate)
//        social_img.image = tempImage
        if social_img.alpha == 0.5{
            social_img.alpha = 1
            //social_img.tintColor = UIColor(red:124,green:213,blue:173,alpha:1)
            social_filter = true
        }else{
            social_img.alpha = 0.5
            social_filter = false
            //social_img.tintColor = UIColor.lightGray
        }
    }
    private let schoolTypes = [
        "All","UMass Amherst", "Amherst College", "Smith College", "Mt. Holyoke College",
        "Hampshire College"]
 
    // MARK:-
    // MARK: Picker Data Source Methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return schoolTypes.count
    }
    
    // MARK:-
    // MARK: Picker Delegate Methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:
        Int) -> String? {
            return schoolTypes[row]
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let row = collegePicker.selectedRow(inComponent: 0)
        let college = schoolTypes[row]
        let text = "Selected College: \(college)"
        selectedCollegeLabel.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading
        academics_img.isUserInteractionEnabled = true
        academics_label.isUserInteractionEnabled = true
        career_img.isUserInteractionEnabled = true
        career_label.isUserInteractionEnabled = true
        orgs_img.isUserInteractionEnabled = true
        orgs_label.isUserInteractionEnabled = true
        social_img.isUserInteractionEnabled = true
        social_label.isUserInteractionEnabled = true
        
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture))
//
//        academics_img.addGestureRecognizer(tapGesture)
//        career_img.addGestureRecognizer(tapGesture)
//        orgs_img.addGestureRecognizer(tapGesture)
//        social_img.addGestureRecognizer(tapGesture)
    }
    
//    func isValidEmail(emailID:String) -> Bool {
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
//        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        return emailTest.evaluate(with: emailID)
//    }
    
//    @objc func tapGesture(imageID:UIImage){
//        if academics_img.alpha == 0.5{
//            academics_img.alpha = 1
//        }else{
//            academics_img.alpha = 0.5
//        }
//
//        print("tapgesture")
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
