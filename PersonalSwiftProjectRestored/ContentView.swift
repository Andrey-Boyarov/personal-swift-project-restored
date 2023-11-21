//
//  ContentView.swift
//  PersonalSwiftLearningProject
//
//  Created by Andrey Boyarov on 26.08.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var tasks: [Task]
    @Environment(\.modelContext) private var modelContext
    
    func delete(at offsets: IndexSet) {
        modelContext.delete(tasks[offsets.first!])
    }
    
    func deleteAllEmpty() {
        tasks.filter({$0.text.isEmpty}).forEach({modelContext.delete($0)})
    }
    
    var body: some View {
        
        TabView {
            Text("Calendar")
                .tabItem {
                    Image(systemName: "calendar.day.timeline.left")
                    Text("Calendar")
                }
            
            List {
                ForEach(tasks, id: \.self) { task in
                    TaskView(task)
                }
                .onDelete(perform: delete)
            }
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
            
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Tasks")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

