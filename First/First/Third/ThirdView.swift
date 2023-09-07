//
//  ThirdView.swift
//  First
//
//  Created by Дмитрий Цветков on 07.09.2023.
//

import SwiftUI

struct ThirdView: View {
    @State private var isShowingDetail = false
    @Environment(\.colorScheme) var colorSheme: ColorScheme
    
    var body: some View {
        Button(action: {
            self.isShowingDetail.toggle()
        }) {
            if colorSheme == .light {
                Text("Show Detail").foregroundColor(Color.black)
            } else {
                Text("Show Detail").foregroundColor(Color.white)
            }
            
        } .sheet(isPresented: $isShowingDetail) {
            Detail()
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
