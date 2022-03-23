//
//  Contact.swift
//  ContactsApp
//
//  Created by Ivan on 22.03.2022.
//

import Foundation

struct Contact {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
