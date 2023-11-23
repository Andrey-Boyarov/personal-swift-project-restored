//
//  ContentView.swift
//  PersonalSwiftLearningProject
//
//  Created by Andrey Boyarov on 26.08.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            Text("Calendar")
                .tabItem {
                    Image(systemName: "calendar.day.timeline.left")
                    Text("Calendar")
                }
            
            TasksWindow()
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

