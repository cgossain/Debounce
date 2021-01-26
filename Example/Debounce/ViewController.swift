//
//  ViewController.swift
//  Debounce
//
//  Created by cgossain on 01/09/2020.
//  Copyright (c) 2020 cgossain. All rights reserved.
//

import UIKit
import Debounce

class ViewController: UIViewController {
    let searchController = UISearchController(searchResultsController: nil)
    
    private let searchThrottler = SearchThrottler()

    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.autocapitalizationType = .none
        
        // search controller uses the search throttler as its search results
        // updater, and we'll set ourselves as the `throttledSearchResultsUpdater`
        // to receive the throttled callbacks
        searchController.searchResultsUpdater = searchThrottler
        searchThrottler.throttledSearchResultsUpdater = self
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
    }
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print("This is a throttle call to update search results")
    }
}
