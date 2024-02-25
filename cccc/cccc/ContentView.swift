//
//  ContentView.swift
//  cccc
//
//  Created by 황은지 on 2/25/24.
//
import SwiftUI
struct Ios : Hashable{
    let name: String
    let position: String
}

struct ContentView: View {
    var team = [
        Ios(name: "김도형", position: "리드멘토"),
        Ios(name: "정성윤", position: "리드멘토"),
        Ios(name: "은서우", position: "멘토"),
        Ios(name: "박근경", position: "멘토"),
        Ios(name: "황은지", position: "멘티"),
        Ios(name: "이창희", position: "멘티"),
        Ios(name: "이하빈", position: "멘티"),
        Ios(name: "정수호", position: "멘티"),
        Ios(name: "김학규", position: "멘티")
    ]
    var body: some View {
        List
        {
            ForEach(team, id: \.self) { Team in
                if Team.position == "리드멘토"
                {
                    Text("🚗 \(Team.name) \(Team.position)")
                }
                else if Team.position == "멘토"{
                    Text("🚕 \(Team.name) \(Team.position)")
                }
                else if Team.position == "멘티"{
                    Text("🚙 \(Team.name) \(Team.position)")
                }
            }
        }
        
    }
}
#Preview {
    ContentView()
}
