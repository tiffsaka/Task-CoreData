//
//  Task+Convenience.swift
//  Task-CoreData
//
//  Created by Tiffany Sakaguchi on 4/27/21.
//

import Foundation
import CoreData

extension Task {
    
    @discardableResult convenience init(name: String, notes: String?, dueDate: Date?, isComplete: Bool = false, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.name = name
        self.dueDate = dueDate
        self.isComplete = isComplete
        self.notes = notes
    }
    
  
}//End of extension
