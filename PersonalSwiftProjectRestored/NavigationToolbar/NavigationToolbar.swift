//
//  TopPanelView.swift
//  PersonalSwiftLearningProject
//
//  Created by Andrey Boyarov on 03.09.2023.
//

import SwiftUI

struct NavigationToolbar<Content: View>: View {
    @ViewBuilder let content: Content
    
    var body: some View {
        NavigationView {
            content
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button (action: {
                            // Open the profile
                        }) {
                            Text(Date.now.formatted(date: .long, time: .omitted))
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(Color.blue)
                                .padding(.horizontal, 10)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button (action: {
                            // Open settings
                        }) {
                            Image(systemName: "gear")
                                .imageScale(.large)
                                .bold()
                                .foregroundColor(Color.blue)
                                .padding(.horizontal, 10)
                        }
                    }
                }
        }
    }
    
    //        HStack {
    //            Button (action: {
    //                // Open the profile
    //            }) {
    //                Text(Date.now.formatted(date: .long, time: .omitted))
    //                    .font(.title2)
    //                    .fontWeight(.medium)
    //            }
    //            Spacer()
    //            Button (action: {
    //                // Open settings
    //            }) {
    //                Image(systemName: "gear")
    //                    .imageScale(.large)
    //                    .bold()
    //            }
    //        }
    //        .foregroundColor(Color.blue)
    //        .padding(.horizontal, 10)
    //    }
}
