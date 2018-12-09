//
//  database.swift
//  FiveCollegeCS
//
//  Created by Perla Garcia on 11/26/18.
//  Copyright © 2018 mikeythebadass. All rights reserved.
//

import Foundation
import SQLite3

//var path = "/Users/Perla/Desktop/Github/FiveCollegeCS/FiveCollegeCS/myData.db"
var path = "/Users/juyoungkim/Documents/Beta    App/FiveCollegeCS/FiveCollegeCS/myData.db"
//let fileManager = FileManager.default
//let path = Bundle.main.resourcePath! + "/myData.db"

// Get current directory path
//let path = fileManager.currentDirectoryPath

//let path = NSURL(fileURLWithPath: path_to_file).lastPathComponent!

func openDatabase() -> OpaquePointer? {
    print("this is the path = ", path)
    print(" ")
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

let insertStatementString = "INSERT INTO users (id, username, password) VALUES (?, ?, ?);"

func insert() {
    var insertStatement: OpaquePointer? = nil
    
    // 1
    if sqlite3_prepare_v2(db, insertStatementString, -1, &insertStatement, nil) == SQLITE_OK {
        let Id: Int32 = 3
        let user: NSString = "Julie"
        let pass: NSString = "Kim"
        
        // 2
        sqlite3_bind_int(insertStatement, 1, Id)
        // 3
        sqlite3_bind_text(insertStatement, 2, user.utf8String, -1, nil)
        // 4
        sqlite3_bind_text(insertStatement, 3, pass.utf8String, -1, nil)
        
        // 5
        if sqlite3_step(insertStatement) == SQLITE_DONE {
            print("Successfully inserted row.")
        } else {
            print("Could not insert row.")
            print(sqlite3_step(insertStatement))
        }
    } else {
        print("INSERT statement could not be prepared.")
    }
    // 5
    sqlite3_finalize(insertStatement)
}
//insert()




