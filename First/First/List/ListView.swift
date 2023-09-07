//
//  ListView.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var lastSelectedTask: LastSelectedRow
    
    var body: some View {
        var modelTask = ModelTasks()
        
        NavigationView {
            List(modelTask.sections) { section in
                switch section.name {
                case "First section":
                    SectionTask(lastSelectedTask: lastSelectedTask, section: section).listRowBackground(Color.blue)
                case "Second section":
                    SectionTask(lastSelectedTask: lastSelectedTask, section: section).listRowBackground(Color.green)
                case "Third section":
                    SectionTask(lastSelectedTask: lastSelectedTask, section: section).listRowBackground(Color.cyan)
                default:
                    Text("")
                }
            }
            .navigationTitle("List of Tasks")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(lastSelectedTask: LastSelectedRow())
    }
}
