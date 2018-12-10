//
//  FeedViewController.swift
//  FiveCollegeCS
//
//  Created by Julie Kim  on 10/28/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //var myIndex = 0
    var data = [String]()
    //let myimages: [UIImage] = [#imageLiteral(resourceName: "careers"),#imageLiteral(resourceName: "social"), #imageLiteral(resourceName: "org"), #imageLiteral(resourceName: "academics")]
    
    
//    let subtitles = ["04/21 4:20pm\nUMass Auditorium", "04/20 6:00pm\nSmith College CC Room 102", "11/20 7:00pm\nSmith College Lazarus Center", "12/09 8:00pm\nHampshire College",//    "05/09 7:10pm\nMount Holyhoke", "08/14 4:00pm\nMount Holyhoke Library Discussion Room","3/21 6:07pm\nAmherst College Main Dining Hall","07/22 12:00pm\nAmherst College","11/20 7:00pm\nSmith College Ford Hall Room 320"]
    let queryStatementString = "SELECT event_name FROM all_data"
    
    func query() {
        var queryStatement: OpaquePointer? = nil
        // 1
        print("In query statement")
        print("Printing Data early><><", data)
        if sqlite3_prepare_v2(db, queryStatementString, -1, &queryStatement, nil) == SQLITE_OK {
            // 2
            while sqlite3_step(queryStatement) == SQLITE_ROW {
                
                // 3
                let id = sqlite3_column_int(queryStatement, 0)
                // 4
                let queryResultCol1 = sqlite3_column_text(queryStatement, 0)
                
                if queryResultCol1==nil {
                    print("could not find title")
                }else{
                    
                    let eventTitle = String(cString: queryResultCol1!)
                    
                    // 5
                    print("Query Result:")
                    // print("Event exists: \(eventTitle)")
                    //performSegue(withIdentifier: "login", sender: self)
                    
                    data.append(eventTitle)
                    print("Event Title is", eventTitle)
                    print("printing data array here", data)
                }
                
            }
            //            else {
            print("Query returned no results")
            //loginButton0.isEnabled = false
            
            //            }
        } else {
            print("SELECT statement could not be prepared")
        }
        
        // 6
        sqlite3_finalize(queryStatement)
        
        
    }
    
    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        query()
        print("SHOWING TABLE NOW (*^*&%&^$*&$*^")
        return(data.count)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        //let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row]
        //cell.detailTextLabel?.text = subtitles[indexPath.row]
        //cell.imageView?.image = myimages[indexPath.row]
        
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
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        myIndex = indexPath.row
//        performSegue(withIdentifier: "eventinfo", sender: self)
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
