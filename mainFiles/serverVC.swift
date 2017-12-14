 
//
//  serverVC.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/14/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import UIKit

class serverVC: UITableViewController {
    
    // var serverStatic: lparStatic
   // var serverRow: lparStatic
    var serverArray = lparArray
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(serverArray)
        print(serverArray[0].dataCenter)
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return lparArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        
        //   let serverEntity = self.serverList(indexPath.row)
        
        cell.textLabel?.text  = "\(serverArray[indexPath.row].server) :  \(serverArray[indexPath.row].ibmPowerClass)"
        cell.detailTextLabel?.text = " Data Center: \(serverArray[indexPath.row].dataCenter)     Side: \(serverArray[indexPath.row].dataCenterSide)   Rack: \(serverArray[indexPath.row].rackLocation)"
        return cell
    }
    
    
    
    
}
