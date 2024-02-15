//
//  SecondView.swift
//  ScreenTransition
//
//  Created by 木村朋広 on 2024/02/15.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            Text("SecondView")
        }
    }
}

#Preview {
    SecondView()
}
