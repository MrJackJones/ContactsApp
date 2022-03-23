//
//  DetailsViewController.swift
//  ContactsApp
//
//  Created by Ivan on 22.03.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = contact.fullName
        phoneLabel.text = contact.phone
        emailLabel.text = contact.email
    }
}
