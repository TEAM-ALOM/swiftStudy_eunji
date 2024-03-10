//
//  ContentView.swift
//  pro3
//
//  Created by 황은지 on 3/10/24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView {
            ContactView()
                .tabItem {
                    Label("연락처", systemImage:"person.circle.fill")
                }
            
            Text("키패드 화면")
                .tabItem {
                    Label("연락처", systemImage:"circle.grid.3x3.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
