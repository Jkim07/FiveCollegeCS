//
//  AddViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    private let schoolComponent = 0
    
    private let schoolNames = ["All","UMass Amherst", "Amherst College", "Smith College", "Mt. Holyoke College", "Hampshire College"]
    var type = ""
    
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var CollegePicker: UIPickerView!
    @IBOutlet weak var eventLocation: UITextField!
    @IBOutlet weak var dateAndTime: UIDatePicker!
    @IBOutlet weak var descriptionField: UITextView!
        
    @IBOutlet weak var academics_img: UIImageView!
    @IBOutlet weak var career_img: UIImageView!
    @IBOutlet weak var org_img: UIImageView!
    @IBOutlet weak var social_img: UIImageView!
    @IBOutlet weak var academic_label: UILabel!
    @IBOutlet weak var social_label: UILabel!

    @IBOutlet weak var career_label: UILabel!
    @IBOutlet weak var orgs_label: UILabel!
    @IBOutlet var academictap: UITapGestureRecognizer!
    @IBOutlet var academiclabeltap: UITapGestureRecognizer!
    @IBOutlet var careertap: UITapGestureRecognizer!
    @IBOutlet var orgtap: UITapGestureRecognizer!
    @IBOutlet var sociallabeltap: UITapGestureRecognizer!
    @IBOutlet var orglabeltap: UITapGestureRecognizer!
    @IBOutlet var careerlabeltap: UITapGestureRecognizer!
    @IBOutlet var socialtap: UITapGestureRecognizer!
    @IBAction func academicTapped(_ sender: Any) {
        print("academic tapped")
        if academics_img.alpha == 0.5{
            academics_img.alpha = 1
            career_img.alpha = 0.5
            org_img.alpha = 0.5
            social_img.alpha = 0.5
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            type = "Academic"
            print("type is")
            print(type)
        }else{
            academics_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    @IBAction func academiclabelTapped(_ sender: Any) {
        print("academic label tapped")
        //        let tempImage = academics_img.image?.withRenderingMode(.alwaysTemplate)
        //        academics_img.image = tempImage
        if academics_img.alpha == 0.5{
            academics_img.alpha = 1
            career_img.alpha = 0.5
            org_img.alpha = 0.5
            social_img.alpha = 0.5
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            type = "Academic"
            print("type is")
            print(type)
        }else{
            academics_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
        
        
        
    }
    @IBAction func careerTapped(_ sender: Any) {
        print("career tapped")
        if career_img.alpha == 0.5{
            career_img.alpha = 1
            academics_img.alpha = 0.5
            org_img.alpha = 0.5
            social_img.alpha = 0.5
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            type = "Career"
            print("type is")
            print(type)
        }else{
            career_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    @IBAction func careerlabeltapped(_ sender: Any) {
        print("career label tapped")
        if career_img.alpha == 0.5{
            career_img.alpha = 1
            academics_img.alpha = 0.5
            org_img.alpha = 0.5
            social_img.alpha = 0.5
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            type = "Career"
            print("type is")
            print(type)
        }else{
            career_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    
    @IBAction func orgsTapped(_ sender: Any) {
        print("orgs Tapped")
        type = "Orgs"
        if org_img.alpha == 0.5{
            org_img.alpha = 1
            academics_img.alpha = 0.5
            career_img.alpha = 0.5
            social_img.alpha = 0.5
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            type = "Orgs"
            print("type is")
            print(type)
        }else{
            org_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    
    @IBAction func orglabelTapped(_ sender: Any) {
        print("orgs label Tapped")
        if org_img.alpha == 0.5{
            org_img.alpha = 1
            academics_img.alpha = 0.5
            career_img.alpha = 0.5
            social_img.alpha = 0.5
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            type = "Orgs"
            print("type is")
            print(type)
        }else{
            org_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    
    @IBAction func socialTapped(_ sender: Any) {
        print("social Tapped")
        if social_img.alpha == 0.5{
            social_img.alpha = 1
            academics_img.alpha = 0.5
            career_img.alpha = 0.5
            org_img.alpha = 0.5
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
            type = "Social"
            print("type is")
            print(type)
        }else{
            social_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    
    @IBAction func sociallabelTapped(_ sender: Any) {
        print("social label Tapped")
        if social_img.alpha == 0.5{
            social_img.alpha = 1
            academics_img.alpha = 0.5
            career_img.alpha = 0.5
            org_img.alpha = 0.5
            type = "Social"
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor(red:31,green:78,blue:114,alpha:1)
        }else{
            social_img.alpha = 0.5
            type = ""
            print("type is")
            print(type)
            //academics_img.tintColor = UIColor.lightGray
        }
    }
    
    @IBAction func addEventButton(_ sender: Any) {
        let type2 = type
        let event=eventName.text
        let college = schoolNames[CollegePicker.selectedRow(inComponent: 0)]
        let location=eventLocation.text
        let date = dateAndTime.date
        let description = descriptionField.text


        let insertStatementString = "INSERT INTO all_data (type, school, event_name, location, date_and_time, description) VALUES (?, ?, ?, ?, ?, ?);"
        
        func insert() {
            var insertStatement: OpaquePointer? = nil
            let dateformatter = DateFormatter()
            dateformatter.dateStyle = DateFormatter.Style.long
              dateformatter.timeStyle = DateFormatter.Style.short
            let now = dateformatter.string(from: date)
            // 1
            if sqlite3_prepare_v2(db, insertStatementString, -1, &insertStatement, nil) == SQLITE_OK {
                let kind: NSString? = type2 as! NSString
                let school: NSString? = college as! NSString
                let name: NSString? = event as! NSString
                let loc: NSString? = location as! NSString
                let date_time: NSString? = now as NSString
                let descriptions: NSString? = description as! NSString

                // 3
                sqlite3_bind_text(insertStatement, 1, kind?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 2, school?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 3, name?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 4, loc?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 5, date_time?.utf8String, -1, nil)
                sqlite3_bind_text(insertStatement, 6, descriptions?.utf8String, -1, nil)

                // 4
                if sqlite3_step(insertStatement) == SQLITE_DONE {
                    print("Successfully inserted row.")
//                    print(kind)
//                    print(school)
//                    print(name)
//                    print(loc)
//                    print(date_time)
//                    print(descriptions)
                } else {
                    print("Could not insert row.")
                }
            } else {
                print("INSERT statement could not be prepared.")
            }
            // 5
            sqlite3_finalize(insertStatement)
        }
        //if all the even requirements are met
        var name_requirement = false
        var type_requirement = false
        var location_requirement = false
        var description_requirement = false
        //name_requirement
        if eventName.text!.isEmpty{
            name_requirement = false
            print("Error: Missing Name")
        }else{
            name_requirement = true
        }
        
        //type requirement
        if type == "" {
            type_requirement = false
            print("Error: Missing Type")
        }else{
            type_requirement = true
        }
        
        //location requirement
        if eventLocation.text!.isEmpty{
            location_requirement = false
            print("Error: Missing Location")
        }else{
            location_requirement = true
        }
        //description requirement
        if descriptionField.text!.isEmpty{
            description_requirement = false
            print("Error: Description Field is empty")
        }else if descriptionField.text.count<30{
            description_requirement = false
            print("Error: Description Field must at least 30 characters")
        }else{
            description_requirement = true
        }
        
        if name_requirement==true && type_requirement==true && location_requirement==true && description_requirement == true {
            print("data fields met all the requirements")
            insert()
            let ttl = "Review"
            let msg = "Is your event information correct?"
            
            let controller = UIAlertController(title: ttl,
                                               message:msg, preferredStyle: .alert)
            
            
            let okAction = UIAlertAction(title: "submit",
                                         style: .default,
                                         handler: { _ in
                                            self.addEventButton()
            })
            let noAction = UIAlertAction(title: "no",
                                         style: .cancel,
                                         handler: nil)
            
            controller.addAction(okAction)
            controller.addAction(noAction)
            
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func addEventButton(){
        insert()
        performSegue(withIdentifier: "add", sender: self)
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schoolNames.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:Int) -> String? {
        return schoolNames[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        academics_img.isUserInteractionEnabled = true
        academic_label.isUserInteractionEnabled = true
        career_img.isUserInteractionEnabled=true
        career_label.isUserInteractionEnabled=true
        org_img.isUserInteractionEnabled=true
        orgs_label.isUserInteractionEnabled=true
        social_img.isUserInteractionEnabled=true
        social_label.isUserInteractionEnabled=true
    }
    
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


