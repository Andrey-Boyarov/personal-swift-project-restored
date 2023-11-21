//
//  TaskView.swift
//  PersonalSwiftProjectRestored
//
//  Created by Andrey Boyarov on 19.11.2023.
//

import Foundation
import SwiftUI

struct TaskView: View {
    @Bindable var task: Task
    
    init(_ task: Task) {
        self.task = task
    }
    
    var body: some View {
        HStack {
            
            Button(action: {
                task.done.toggle()
            }) {
                Image(systemName: task.done ? "circle.dashed.inset.filled" : "circle.dashed")
            }
            TextField(text: $task.text, label: {Text("")})
        }
    }
}
