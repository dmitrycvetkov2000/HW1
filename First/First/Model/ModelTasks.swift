//
//  ModelTasks.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import Foundation

struct ModelTasks {
    let firstTask = SomeTask(name: "First", number: "1")
    let firstTask2 = SomeTask(name: "First", number: "2")
    let firstTask3 = SomeTask(name: "First", number: "3")
    let secondTask = SomeTask(name: "Second", number: "4")
    let thirdTask = SomeTask(name: "Third", number: "5")
    
    lazy var section1 = SomeSectionTask(tasks: [firstTask, firstTask2, firstTask3], name: "First section")
    lazy var section2 = SomeSectionTask(tasks: [secondTask], name: "Second section")
    lazy var section3 = SomeSectionTask(tasks: [thirdTask], name: "Third section")
    
    lazy var sections: [SomeSectionTask] = [section1, section2, section3]
}
