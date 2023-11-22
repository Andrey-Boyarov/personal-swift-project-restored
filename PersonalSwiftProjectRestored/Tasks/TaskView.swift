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
                Image(systemName: task.done ? "circle.inset.filled" : "circle")
                    .imageScale(.large)
            }
            .buttonStyle(.borderless)
            .padding(10)
            TextField(text: $task.text, label: {Text("")})
                .frame(maxHeight: .infinity)
                .font(.system(size: 20))
                .textFieldStyle(.plain)
        }
    }
}
