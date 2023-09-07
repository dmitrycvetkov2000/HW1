//
//  FirstView.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

struct FirstView: View {
    @Binding var selectedTabView: SelectedTabView
    
    @ObservedObject var lastSelectedTask: LastSelectedRow
    
    @State var isShowDetailViewAboutTask = false
    
    @EnvironmentObject var counter: Counter // Счетчик нажатий на текст ячейки
    
    var body: some View {
        VStack {
            LabelFromUIKit().frame(maxWidth: 10).fixedSize(horizontal: false, vertical: true)
            Text("You selected row \(counter.count) times")
            Button(action: {
                selectedTabView = SelectedTabView.second
                self.isShowDetailViewAboutTask.toggle()
            }) {
                if !lastSelectedTask.task.number.isEmpty && !lastSelectedTask.task.name.isEmpty {
                    Text("Go on secondView Row \(lastSelectedTask.task.number)")
                } else {
                    Text("Go on secondView")
                }
            }
            .sheet(isPresented: $isShowDetailViewAboutTask) {
                DetailViewAboutTask(task: lastSelectedTask.task) // Открывает последнюю Row, текст которой нажимали
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(selectedTabView: .constant(.second), lastSelectedTask: LastSelectedRow())
    }
}
