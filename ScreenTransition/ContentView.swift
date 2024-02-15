//
//  ContentView.swift
//  ScreenTransition
//
//  Created by 木村朋広 on 2024/02/15.
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView = false
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink {
                    SecondView()
                } label: {
                    Text("SecondViewへナビ遷移")
                }
                Button("SecondViewへモーダル遷移"){
                    isShowSecondView = true
                }
                .padding()
                .sheet(isPresented: $isShowSecondView) { //sheetをfullScreenCoverに書き換えるとフルモーダルになる
                    SecondView()
                        .presentationDetents([.medium]) //mediumはハーフモーダルになる
                }
                .padding()
                .navigationTitle("画面1")
            } //VStackここまで
        } //NavigationStackここまで
    } //bodyここまで
} //Contentview ここまで

    #Preview {
        ContentView()
    }
