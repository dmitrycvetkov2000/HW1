//
//  LabelFromUIKit.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

struct LabelFromUIKit: UIViewRepresentable {
    typealias UIViewType = UILabel
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.text = "Hello from UIKit"
        label.backgroundColor = .cyan
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {}
}
