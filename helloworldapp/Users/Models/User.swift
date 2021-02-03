//
//  User.swift
//  helloworldapp
//
//  Created by Chris Monaccio on 2/3/21.
//

import Foundation

struct User: Hashable, Codable {
    var id: Int
    var email: String
    var username: String
    var password: String
    var phone: String
    
    private var name: Name
    struct Name: Hashable, Codable {
        var first: String
        var last: String
    }
    
    private var address: Address
    struct Address: Hashable, Codable {
        var street: String
        var city: String
        var zipcode: Int
    }
}
