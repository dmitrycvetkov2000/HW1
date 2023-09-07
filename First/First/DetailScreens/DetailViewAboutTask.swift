//
//  DetailViewAboutTask.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

struct DetailViewAboutTask: View {
    var task: SomeTask

    var body: some View {
        if !task.name.isEmpty && !task.number.isEmpty {
            Text("DetailView about \(task.number) \(task.name)")
                .font(.callout)
        } else {
            Text("Вы еще не нажимали на List")
                .font(.callout)
        }
    }
}
