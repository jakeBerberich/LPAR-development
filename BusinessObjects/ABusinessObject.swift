//
//  ABusinessObject.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/7/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import Foundation
import CoreData

class ABusinessObject<T: NSManagedObject>: mmBusinessObject<T> {
    
    override init() {
        super.init()
        self.copyDatabaseIfNotPresent = true
        self.dbName = "Model"
    }
}
