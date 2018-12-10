//
//  editprofileViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 12/10/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class editprofileViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    @IBOutlet weak var profile_img: UIImageView!
    
    @IBAction func importPhoto(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        self.present(image,animated:true)
        {
            // after it is complete
            // insert this new image into this user's account database
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]){
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            profile_img.image = image
        }else{
            //Error message
        }
        self.dismiss(animated:true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profile_img.image = #imageLiteral(resourceName: "clear-robot")

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
