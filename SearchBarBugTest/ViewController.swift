//
//  ViewController.swift
//  SearchBarBugTest
//
//  Created by Sami Iljin on 12/09/16.
//  Copyright © 2016 Sami Iljin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.tableHeaderView = searchController.searchBar
        
        definesPresentationContext = true
    }

    private lazy var searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: nil)
        controller.view.backgroundColor = UIColor.white
        controller.searchResultsUpdater = self
        controller.hidesNavigationBarDuringPresentation = false
        
        let searchBar = controller.searchBar
        searchBar.backgroundColor = UIColor.white
        
        searchBar.placeholder = "Find something"
        searchBar.backgroundImage = UIImage()
        
        return controller
    }()

}

extension ViewController: UISearchResultsUpdating {

    func updateSearchResults(for searchController: UISearchController) {
        print("Hello World!")
    }
    
}
