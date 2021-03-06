//
//  ProfileViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate{

    @IBOutlet weak var profile_img: UIImageView!

    
    
    
    @IBAction func editPhotoButtonPressed(_ sender: Any) {
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
        //if user's profile image is null
        profile_img.image = #imageLiteral(resourceName: "clear-robot")
        //otherwise load the profile image
        //userimage =
        //profile_img.image = userimage
        
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
