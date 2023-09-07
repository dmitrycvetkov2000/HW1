//
//  FirstApp.swift
//  First
//
//  Created by Дмитрий Цветков on 02.09.2023.
//

import SwiftUI

@main
struct FirstApp: App {
    @StateObject var counter = Counter()
    var body: some Scene {
        WindowGroup {
            MainAppView().environmentObject(counter)
        }
    }
}
