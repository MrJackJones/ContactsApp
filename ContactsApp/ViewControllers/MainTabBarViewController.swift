//
//  MainTabBarViewController.swift
//  ContactsApp
//
//  Created by Ivan on 22.03.2022.
//

import UIKit


func generateContacts() -> [Contact] {
    var constacts: [Contact] = []
    let data = DataManager()
    for _ in 0...9 {
        let firstName = data.firstNames.randomElement()!
        if let index = data.firstNames.firstIndex(of: firstName)  {
            data.firstNames.remove(at: index)
        }
        
        let lastNames = data.lastNames.randomElement()!
        if let index = data.lastNames.firstIndex(of: lastNames)  {
            data.lastNames.remove(at: index)
        }
        
        let phoneNumbers = data.phoneNumbers.randomElement()!
        if let index = data.phoneNumbers.firstIndex(of: phoneNumbers)  {
            data.phoneNumbers.remove(at: index)
        }
        
        let emails = data.emails.randomElement()!
        if let index = data.emails.firstIndex(of: emails)  {
            data.emails.remove(at: index)
        }
        
        constacts.append(Contact(
            firstName: firstName,
            lastName: lastNames,
            phone: phoneNumbers,
            email: emails
        ))
    }
    return constacts
}

class MainTabBarViewController: UITabBarController {
    let contacts: [Contact] = generateContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for viewController in viewControllers! {
            if let navigationVC = viewController as? UINavigationController {
                if let mainVC = navigationVC.topViewController as? MainTableViewController {
                    mainVC.contacts = contacts
                }
                if let contactVC = navigationVC.topViewController as? ContactTableViewController {
                    contactVC.contacts = contacts
                }
            }
        }
    }
}

