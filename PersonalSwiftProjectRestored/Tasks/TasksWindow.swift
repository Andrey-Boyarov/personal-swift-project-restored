//
//  TasksWindow.swift
//  PersonalSwiftProjectRestored
//
//  Created by Andrey Boyarov on 23.11.2023.
//

import Foundation
import SwiftUI
import SwiftData

struct TasksWindow: View {
    @Query private var tasks: [Task]
    @Environment(\.modelContext) private var modelContext
    
    func delete(at offsets: IndexSet) {
        modelContext.delete(tasks[offsets.first!])
    }
    
    func deleteAllEmpty() {
        tasks.filter({$0.text.isEmpty}).forEach({modelContext.delete($0)})
    }
    
    var body: some View {
        List {
            ForEach(tasks, id: \.self) { task in
                TaskView(task)
            }
            .onDelete(perform: delete)
        }
        .listStyle(PlainListStyle())
        .overlay(alignment: .bottom) {
            Button(action: {
                modelContext.insert(Task(""))
            }, label: {
                Rectangle()
                    .frame(width: 375, height: 50)
                    .cornerRadius(10)
                    .opacity(0.4)
                    .overlay(
                        Image(systemName: "plus")
                            .fontWeight(.medium)
                            .font(.system(size: 40))
                            .foregroundColor(.blue)
                            .opacity(0.4)
                    )
                    .padding()
                
                
            })
        }
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
        }
    }
}
