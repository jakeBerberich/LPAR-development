//
//  File.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/12/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import Foundation
import UIKit


struct lparLocation {
    let hmc : String
    let location: String
    let structure: String
}

let hmc04 = lparLocation  (hmc: "hmc04", location: "High Point", structure: "Physical")
let hmc02b = lparLocation(hmc: "hmc02b", location: "Greensboro", structure: "Physical")
let hmc8a = lparLocation(hmc: "hmc8a", location: "Greensboro", structure: "VIOS")
let hmc05 = lparLocation(hmc: "hmc04",  location: "Denver" , structure: "Physical")
let fsm01 = lparLocation(hmc: "fsm01",  location: "Greensboro", structure: "VIOS")
