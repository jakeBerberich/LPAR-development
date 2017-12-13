//
//  DetailTableVC.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/10/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import UIKit

class DetailTableVC: UITableViewController {

    var lparDetail = LparEntity()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(lparDetail)

       
    }

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
       
        
    }

    func loadDetail() {
        
        
    }
}
