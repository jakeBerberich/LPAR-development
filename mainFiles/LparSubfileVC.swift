//
//  LparSubfileVC.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/7/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import UIKit

class LparSubfileVC: UITableViewController {
    
    @IBOutlet weak var back: UIBarButtonItem!
    
    var lpar = Lpars() // reference to Lpars business controller
    var lparList = Array<LparEntity>()   // holds the arry of Lpar rows
    var sortDescriptor = NSSortDescriptor(key: "hmcName", ascending: true)
    
    var sortValue: String = "rwar"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sortValue)
        
       
        
        self.lparList = self.lpar.getAllEntities()
        
        // lpar hmc application environment server
        switch sortValue {
        case "lpar":
            lparList.sort(by: { $0.lpar <  $1.lpar})
        case "hmc":
            lparList.sort(by: { $0.hmcName <  $1.hmcName})
        case "application":
            lparList.sort(by: { $0.application <  $1.application})
        case "environment":
            lparList.sort(by: { $0.environment <  $1.environment})
        case "server":
            lparList.sort(by: { $0.serverName <  $1.serverName})
        default:
             lparList.sort(by: { $0.lpar <  $1.lpar})
            
        }
        
        
    }
        
 
    @IBAction func dismissView(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.lparList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        
        let lparEntity = self.lparList[indexPath.row]
        
        //-------------
        // lpar hmc application environment server
        switch sortValue {
        case "lpar":
            cell.textLabel?.text = "\(lparEntity.lpar) : \(lparEntity.application)"
            cell .detailTextLabel?.text =  "\(lparEntity.hmcName): \(lparEntity.serverName) : \(lparEntity.application)"
        case "hmc":
            cell.textLabel?.text = "\(lparEntity.lpar) : \(lparEntity.hmcName)"
            cell .detailTextLabel?.text =  " \(lparEntity.serverName) : \(lparEntity.application)"
        case "application":
            cell.textLabel?.text = "\(lparEntity.lpar) :  \(lparEntity.application)"
            cell .detailTextLabel?.text =  "\(lparEntity.hmcName): \(lparEntity.serverName) "
        case "environment":
            cell.textLabel?.text = "\(lparEntity.lpar) : \(lparEntity.environment)"
            cell .detailTextLabel?.text =  "\(lparEntity.hmcName): \(lparEntity.serverName) : \(lparEntity.application)"
        case "server":
            cell.textLabel?.text = "\(lparEntity.lpar) : \(lparEntity.serverName)"
            cell .detailTextLabel?.text =  "\(lparEntity.hmcName): \(lparEntity.serverName) : \(lparEntity.application)"
        default:
            cell.textLabel?.text = "\(lparEntity.lpar), \(lparEntity.application)"
            cell .detailTextLabel?.text =  "\(lparEntity.hmcName): \(lparEntity.serverName) : \(lparEntity.application)"
            
        }        //-------------
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailViewSegue" {
            let detailTableVC = segue.destination as! DetailTableVC
            let indexPath = self.tableView.indexPathForSelectedRow
            detailTableVC.lparDetail = self.lparList[indexPath!.row]
        }
        
        
    }

    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true )
    }
    
}
