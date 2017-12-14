//
//  DetailTableVC.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/10/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import UIKit

class DetailTableVC: UITableViewController {

    var lparDetail = LparEntity() // populated via segue
    @IBOutlet weak var serverNameHmcPartition: UILabel!
    
    @IBOutlet weak var lparName: UILabel!
    @IBOutlet weak var serialNumber: UILabel!
    @IBOutlet weak var modelFeatureGroup: UILabel!
    @IBOutlet weak var application: UILabel!
    @IBOutlet weak var enviroment: UILabel!
    @IBOutlet weak var city: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(lparDetail)
        print(bernie)
        
        lparName.text = ("\(lparDetail.lpar)  Server: \(lparDetail.serverName)")
        serverNameHmcPartition.text = ("Server: \(lparDetail.serverName)")
        serialNumber.text = ("Serial #:  \(lparDetail.serialNumber)    HMC: \(lparDetail.hmcName)")
        modelFeatureGroup.text = ("Model \(lparDetail.model)")
        application.text = lparDetail.application
        enviroment.text = lparDetail.environment
        
        switch lparDetail.serverName {
        case "Bishop" :
            city.text = String(bishop.dataCenter)
        case "Chappie":
            city.text = chappie.dataCenter
        case "Gort":
            city.text = gort.dataCenter
        case "Sonny":
            city.text = sonny.dataCenter
        case "FSM" :
            city.text = fsm01.dataCenter
        case "Rosie":
            city.text = rosie.dataCenter
        case "Bernie" :
            city.text = bernie.dataCenter
        case "DCX":
            city.text = dcx.dataCenter
        default:
            city.text = "location not defined"
            
            
            
        }
    
       
    }

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
       
        
    }

    func loadDetail() {
        
        
    }
}
