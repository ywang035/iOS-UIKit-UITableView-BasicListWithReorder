//
//  ViewController.swift
//  Test-3-UITableView
//
//  Created by Yang W on 4/11/21.
//

import UIKit

class ViewController: UIViewController, UINavigationBarDelegate {
    
    let editButton = UIButton()
    let tableViewController = ListViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        buildEditButton()
        buildTableView()
        
    }
    
    func buildEditButton() {
        view.addSubview(editButton)
        
        editButton.translatesAutoresizingMaskIntoConstraints = false
        
        editButton.setTitle("Edit", for: .normal)
        editButton.setTitleColor(.black, for: .normal)
        editButton.addTarget(self, action: #selector(editTable), for: .touchUpInside)
        
        editButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        editButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        editButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    
    
    
    func buildTableView() {
        view.addSubview(tableViewController.view)
        
        tableViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        tableViewController.view.topAnchor.constraint(equalTo: editButton.bottomAnchor).isActive = true
        tableViewController.view.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        tableViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    @objc func editTable() {
        if tableViewController.tableView.isEditing {
            editButton.setTitle("Edit", for: .normal)
            tableViewController.tableView.isEditing = false
            
        } else {
            editButton.setTitle("Done", for: .normal)
            tableViewController.tableView.isEditing = true
        }
        
    }
    
}


