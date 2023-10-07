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
    var data: Data?
}

class TaskLoader: ObservableObject {
    @Published var storage: TaskStorage
    private var documentUrl = DocumentLoader.document("tasks.json")
    
    init() {
        do {
            let jsonData = try Data(contentsOf: documentUrl)
            storage = try JSONDecoder().decode(TaskStorage.self, from: jsonData)
        } catch {
            storage = TaskStorage(data: [Task]())
            print(error)
        }
    }
}
