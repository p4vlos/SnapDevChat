//
//  DataService.swift
//  SnapDevChat
//
//  Created by Pavlos Nicolaou on 31/08/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

let FIR_CHILD_USERS = "users"

import Foundation
import FirebaseDatabase

class DataService {
    private static let _instance = DataService()
    
    static var instance: DataService {
        return _instance
    }
    var mainRef: FIRDatabaseReference {
        return FIRDatabase.database().reference()
    }
    
    var usersRef: FIRDatabaseReference {
        return mainRef.child(FIR_CHILD_USERS)
    }
    
    func saveUser(uid: String) {
        let profile: Dictionary<String, AnyObject> = ["firstName": "" as AnyObject, "lastName": "" as AnyObject]
        mainRef.child(FIR_CHILD_USERS).child(uid).child("profile").setValue(profile)
    }
}
