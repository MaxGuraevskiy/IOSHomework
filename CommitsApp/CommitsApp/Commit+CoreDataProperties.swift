//
//  Commit+CoreDataProperties.swift
//  CommitsApp
//
//  Created by Guraevskiy Max on 30.11.2020.
//
//

import Foundation
import CoreData


extension Commit {

    @nonobjc public class func createFetchRequest() -> NSFetchRequest<Commit> {
        return NSFetchRequest<Commit>(entityName: "Commit");
    }

    @NSManaged public var date: Date?
    @NSManaged public var message: String?
    @NSManaged public var sha: String?
    @NSManaged public var url: String?

}

extension Commit : Identifiable {

}
