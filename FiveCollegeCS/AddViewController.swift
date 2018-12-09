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
    var type = "";
    
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var CollegePicker: UIPickerView!
    @IBOutlet weak var eventLocation: UITextField!
    @IBOutlet weak var dateAndTime: UIDatePicker!
    @IBOutlet weak var descriptionField: UITextView!
        
    @IBAction func academicTapped(_ sender: Any) {
        print("academic tapped")
        type = "Academic"
    }
    @IBAction func careerTapped(_ sender: Any) {
        print("career tapped")
        type = "Career"
    }
    
    @IBAction func orgsTapped(_ sender: Any) {
        print("orgs Tapped")
        type = "Orgs"
    }
    
    @IBAction func socialTapped(_ sender: Any) {
        print("social Tapped")
        type = "Social"
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
        insert()

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schoolNames.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:Int) -> String? {
        return schoolNames[row]
    }

        
    }
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
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

//}
