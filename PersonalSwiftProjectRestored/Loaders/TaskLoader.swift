//
//  TaskService.swift
//  PersonalSwiftLearningProject
//
//  Created by Andrey Boyarov on 01.10.2023.
//

import Foundation

struct TaskStorage: Codable {
    var data: [Task]
}

struct Task: Codable {
    var text = ""
    var tag = "default"
}

class TaskLoader: ObservableObject {
    @Published var storage: TaskStorage
    private var documentUrl = DocumentLoader.document("tasks.json")
    
    init() {
        do {
            try "".write(to: documentUrl, atomically: true, encoding: .utf8)
            let testData = TaskStorage(data: [Task(text: "Test", tag: "default"), Task(text: "data", tag: "default")])
            let jsonData = try Data(contentsOf: documentUrl)
            print(jsonData)
            var data = try JSONEncoder().encode(testData)
            try data.write(to: documentUrl)
            storage = try JSONDecoder().decode(TaskStorage.self, from: jsonData)
        } catch {
            storage = TaskStorage(data: [Task]())
            print(error)
        }
    }
    
    func getStringifiedData() -> String {
        "Some data"
    }
    
    func addDataTest() {
        
        let testData = "{data: [{text: \"some\", tag: \"default\"}, {text: \"tasks\", tag: \"default\"}]}"
        do {
            try testData.write(to: documentUrl, atomically: true, encoding: .utf8)
        } catch {
            print("Test data write gone wrong")
        }
    }
}
