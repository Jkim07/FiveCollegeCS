//
//  database.swift
//  FiveCollegeCS
//
//  Created by Perla Garcia on 11/26/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import Foundation
import SQLite3

var path = "/Users/Perla/Desktop/Github/FiveCollegeCS/FiveCollegeCS/myData.db"

func openDatabase() -> OpaquePointer? {
    var db: OpaquePointer? = nil
    
    if sqlite3_open(path, &db) == SQLITE_OK {
        print("Successfully opened connection to database at \(path)")
        return db
    } else {
        print("Unable to open database. Verify that you created the directory described " +
            "in the Getting Started section.")
        
        //        PlaygroundPage.current.finishExecution()
    }
    return db
}
let db = openDatabase()
