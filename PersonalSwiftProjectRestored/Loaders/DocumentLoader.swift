//
//  DocumentService.swift
//  PersonalSwiftLearningProject
//
//  Created by Andrey Boyarov on 01.10.2023.
//

import Foundation

class DocumentLoader {
    static func document(_ fileName: String) -> URL {
        FileManager.default.createFile(atPath: fileName, contents: nil, attributes: nil)
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        // just send back the first one, which ought to be the only one
        return paths[0].appendingPathComponent(fileName)
    }
}
