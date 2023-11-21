//
//  Task.swift
//  PersonalSwiftProjectRestored
//
//  Created by Andrey Boyarov on 19.11.2023.
//

import Foundation
import SwiftData

@Model
class Task {
    @Attribute(.unique) var id: UUID
    var text: String
    var done = false
    
    init(_ text: String) {
        id = UUID.init()
        self.text = text
    }
}
