//
//  TaskManager.swift
//  Assignment Notebook
//
//  Created by Avery Zakson on 1/16/20.
//  Copyright © 2020 mojo. All rights reserved.
//

import UIKit

class TaskManager: Codable {
    
    var subject: String
    var dueDate: String
    var description: String
    var assignment: String
    
    init(subject: String, dueDate: String, description: String, assignment: String) {
        self.subject = subject
        self.dueDate = dueDate
        self.description = description
        self.assignment = assignment
    }
}
