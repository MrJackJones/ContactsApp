//
//  ContactTableViewController.swift
//  ContactsApp
//
//  Created by Ivan on 22.03.2022.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var contacts: [Contact]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactViewCell", for: indexPath) as! ContactTableViewCell
        let contact = contacts[indexPath.section]
        cell.selectionStyle = .none
        cell.phoneLabel.text = contact.phone
        cell.emailLabel.text = contact.email
        return cell
    }



}
