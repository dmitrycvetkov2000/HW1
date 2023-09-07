//
//  TaskRow.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

struct SomeTask: Identifiable {
    var id = UUID()
    var name: String
    var number: String
}

struct TaskRow: View {
    var task: SomeTask
    var body: some View {
        Text("The task \(task.name) \(task.number)")
    }
}
