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
    
    let subtitles = ["04/21 4:20pm\nUMass Auditorium", "04/20 6:00pm\nSmith College CC Room 102", "11/20 7:00pm\nSmith College Lazarus Center", "12/09 8:00pm\nHampshire College",
    "05/09 7:10pm\nMount Holyhoke", "08/14 4:00pm\nMount Holyhoke Library Discussion Room","3/21 6:07pm\nAmherst College Main Dining Hall","07/22 12:00pm\nAmherst College","11/20 7:00pm\nSmith College Ford Hall Room 320"]

    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(data.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
//        let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subtitles[indexPath.row]
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
