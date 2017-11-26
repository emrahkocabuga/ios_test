//
//  User.swift
//  alamofire_test
//
//  Created by Emrah Kocabuga on 7.11.2017.
//  Copyright © 2017 Emrah Kocabuga. All rights reserved.
//

import Foundation

class User {
    
    var name: String
    var surname: String
    var email: String
    var password: String
    
//    var company: String?
//    var title: String?
//    var location: String?
//    var companyemail: String?
//    var phone: String?
    
    var facebookLink: String?
    var twitterLink: String?
    var instragramLink: String?
    var githubLink: String?
    
    
    
    
    init(name: String, surname: String, email: String, password: String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.password = password
//        self.company = company
//        self.title = title
//        self.location = location
//        self.companyemail = company
//        self.phone = phone
    }
    
}
