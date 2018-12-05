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
    
    @IBOutlet weak var CollegePicker: UIPickerView!
    
    @IBOutlet weak var addEventButton: UIButton!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
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
