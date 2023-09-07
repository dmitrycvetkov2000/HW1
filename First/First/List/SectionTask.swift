//
//  SectionTask.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

struct SomeSectionTask: Identifiable {
    var id = UUID()
    var tasks: [SomeTask]
    var name: String
}

struct SectionTask: View {
    @ObservedObject var lastSelectedTask: LastSelectedRow
    @EnvironmentObject var counter: Counter
    var section: SomeSectionTask
    var body: some View {
        Section(header: Text(section.name)) {
            ForEach(section.tasks) { task in
                NavigationLink(destination: DetailViewAboutTask(task: task)) {
                    TaskRow(task: task)
                }.onTapGesture {
                    lastSelectedTask.task = task
                    counter.count += 1
                }
            }
        }
    }
}
