//
//  TasksView.swift
//  PersonalSwiftLearningProject
//
//  Created by Andrey Boyarov on 03.09.2023.
//

import SwiftUI

struct TasksView: View {
    
    var body: some View {
        VStack{
            Text("Tasks")
            Button (action: {
                // nothing
            }) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .bold()
                    .foregroundColor(Color.blue)
                    .padding(.horizontal, 10)
            }}
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
