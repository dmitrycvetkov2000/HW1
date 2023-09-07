//
//  MainAppView.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

enum SelectedTabView {
    case first, second, third
}

struct MainAppView: View {
    @State private var selectedTabView = SelectedTabView.first
    
    @StateObject var lastSelectedTask = LastSelectedRow()
    
    var body: some View {
        TabView (selection: $selectedTabView) {
            FirstView(selectedTabView: $selectedTabView, lastSelectedTask: lastSelectedTask)
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }.tag(SelectedTabView.first)
            ListView(lastSelectedTask: lastSelectedTask)
                .listStyle(.insetGrouped)
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }.tag(SelectedTabView.second)
            ThirdView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Third")
                }.tag(SelectedTabView.third)
        }
    }
}

struct MainAppView_Previews: PreviewProvider {
    static var previews: some View {
        MainAppView()
    }
}
