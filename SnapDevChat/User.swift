//
//  User.swift
//  SnapDevChat
//
//  Created by Pavlos Nicolaou on 31/08/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

import UIKit

struct User {
    private var _firstName: String
    private var _uid: String
    
    var uid: String {
        return _uid
    }
    
    var firstName: String {
        return _firstName
    }
    
    init(uid: String, firstName: String) {
        _uid = uid
        _firstName = firstName
    }
}
