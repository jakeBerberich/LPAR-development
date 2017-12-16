//
//  LparEntity+CoreDataProperties.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/8/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//
//

import Foundation
import CoreData


extension LparEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LparEntity> {
        return NSFetchRequest<LparEntity>(entityName: "LparEntity")
    }

    @NSManaged public var application: String
    @NSManaged public var auditExternal: String
    @NSManaged public var auditInternal: String
    @NSManaged public var auxStorage: String
    @NSManaged public var buildTime: String
    @NSManaged public var comments: String
    @NSManaged public var environment: String
    @NSManaged public var hmcName: String
    @NSManaged public var lpar: String
    @NSManaged public var lparDescription: String
    @NSManaged public var mainStorage: String
    @NSManaged public var model: String
    @NSManaged public var numberProcessors: String
    @NSManaged public var osRelease: String
    @NSManaged public var partionID: String
    @NSManaged public var processorFeature: String
    @NSManaged public var serialNumber: String
    @NSManaged public var serverName: String
    @NSManaged public var serverPartitions: String
    @NSManaged public var serverProcessors: String
    @NSManaged public var systemAsp: String
    @NSManaged public var systemType: String
    @NSManaged public var pgroup: String

}
