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
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var powerClass: UILabel!
    @IBOutlet weak var modelGroup: UILabel!
    @IBOutlet weak var os400: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(lparDetail.mainStorage)
        
        
        
        
        lparName.text = ("\(lparDetail.lpar)  Server: \(lparDetail.serverName)")
        serverNameHmcPartition.text = ("Server: \(lparDetail.serverName)")
        serialNumber.text = ("Serial #:  \(lparDetail.serialNumber)    HMC: \(lparDetail.hmcName)")
        modelFeatureGroup.text = ("Model \(lparDetail.model)  System Type: \(lparDetail.systemType)")
        
        application.text = lparDetail.application
        enviroment.text = lparDetail.environment
        
        switch lparDetail.serverName {
        case "Bishop" :
            city.text = bishop.dataCenter
            location.text = ("Rack: \( bishop.rackLocation)")
            powerClass.text =  bishop.ibmPowerClass
          //  modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
        case "Chappie":
            city.text = chappie.dataCenter
            location.text = ("Rack: \( chappie.rackLocation)")
            powerClass.text =  chappie.ibmPowerClass
          //  modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
        case "Gort":
            city.text = gort.dataCenter
            location.text = ("Rack: \( gort.rackLocation)")
            powerClass.text =  gort.ibmPowerClass
          //  modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
        case "Sonny":
            city.text = sonny.dataCenter
            location.text = ("Rack: \( sonny.rackLocation)")
            powerClass.text =  sonny.ibmPowerClass
          //  modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
          //  os400.text = lparDetail.os400release
            
        case "FSM" :
            city.text = fsm01.dataCenter
            location.text = ("Rack: \( fsm01.rackLocation)")
            powerClass.text =  fsm01.ibmPowerClass
         //   modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
        case "Rosie":
            city.text = rosie.dataCenter
            location.text = ("Rack: \( rosie.rackLocation)")
            powerClass.text =  rosie.ibmPowerClass
          //  modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
        case "Bernie" :
            city.text = bernie.dataCenter
            location.text = ("Rack: \( bernie.rackLocation)")
            powerClass.text =  bernie.ibmPowerClass
         //   modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
        case "DCX":
            city.text = dcx.dataCenter
            location.text = ("Rack: \( dcx.rackLocation)")
            powerClass.text =  dcx.ibmPowerClass
         //   modelGroup.text = ("P Group:  \(lparDetail.processorFeature)")
        default:
            city.text = "location not defined"
          
        }
    
       
    }

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
       
        
    }

    func loadDetail() {
        
        
    }
}
