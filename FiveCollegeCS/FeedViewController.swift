//
//  FeedViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let myimages: [UIImage] = [#imageLiteral(resourceName: "careers"), #imageLiteral(resourceName: "academics"), #imageLiteral(resourceName: "social"), #imageLiteral(resourceName: "org"),#imageLiteral(resourceName: "org"), #imageLiteral(resourceName: "careers"), #imageLiteral(resourceName: "academics"), #imageLiteral(resourceName: "social"), #imageLiteral(resourceName: "careers")]
    
    let data = ["Coding Challenges", "Harambe Speaks","Robotics Club","Grace Hopper", "Women in Gaming","Amazon","UMass Hackathon", "Google Session","Video Game Team"]

    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(data.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = data[indexPath.row]
        cell.imageView?.image = myimages[indexPath.row]
        return(cell)
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
