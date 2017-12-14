//
//  File.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/12/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import Foundation
import UIKit


struct lparStatic {
    let server : String
    let dataCenterSide: String
    let rackLocation: String
    let dataCenter: String
    let ibmPowerClass: String
}

let bishop =  lparStatic(server: "Bishop", dataCenterSide: "A", rackLocation: "A3E4", dataCenter: "Greensboro", ibmPowerClass: "Power 8" )
let chappie =  lparStatic(server: "Chappie", dataCenterSide: "A", rackLocation: "A3E5", dataCenter: "Greensboro", ibmPowerClass: "Power 8" )
let gort =  lparStatic(server: "Gort", dataCenterSide: "B", rackLocation: "A3E5", dataCenter: "Greensboro", ibmPowerClass: "Power 8" )
let sonny =  lparStatic(server: "Sonny", dataCenterSide: "B", rackLocation: "B3E3", dataCenter: "Greensboro", ibmPowerClass: "Power 6" )
let fsm01 =  lparStatic(server: "FSM01", dataCenterSide: "A", rackLocation: "A1E1", dataCenter: "Greensboro", ibmPowerClass: "Blade" )
let rosie =  lparStatic(server: "Rosie", dataCenterSide: "Central", rackLocation: "*TBD", dataCenter: "High Point", ibmPowerClass: "Power 6" )
let bernie =  lparStatic(server: "Bernie", dataCenterSide: "Central", rackLocation: "*TBD", dataCenter: "High Point", ibmPowerClass: "Power 7" )
let dcx =  lparStatic(server: "DCX", dataCenterSide: "Central", rackLocation: "*TBD", dataCenter: "Denver", ibmPowerClass: "Power 6" )
