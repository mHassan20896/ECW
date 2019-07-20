//
//  User.swift
//  ECW-Mobile-iOS
//
//  Created by Muhammad Hassan Shakeel on 18/07/2019.
//  Copyright © 2019 ECW. All rights reserved.
//

import Foundation

class User {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var profilePicture: URL? = nil
    
    static var sharedInstance = User()
}
