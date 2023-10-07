//
//  ContentView.swift
//  PersonalSwiftLearningProject
//
//  Created by Andrey Boyarov on 26.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationToolbar {
                TabView {
                    GoalsView().tabItem {
                        Image(systemName: "pencil.and.ruler")
                        Text("Goals1")
                    }
                    CalendarView().tabItem {
                        Image(systemName: "calendar.day.timeline.left")
                        Text("Calendar")
                    }
                    TasksView().tabItem {
                        Image(systemName: "list.bullet")
                        Text("Tasks")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
