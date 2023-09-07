//
//  LastSelectedRow.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import Foundation

class LastSelectedRow: ObservableObject {
    @Published var task: SomeTask = SomeTask(name: "", number: "")
}
