//
//  FilterViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var collegePicker: UIPickerView!
    @IBOutlet weak var selectedCollegeLabel: UILabel!
    
    @IBOutlet weak var filterButton: UIButton!
    private let schoolComponent = 0
    
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

}
