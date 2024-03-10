//
//  profileview.swift
//  pro3
//
//  Created by 황은지 on 3/10/24.
//

import SwiftUI


struct ProfileView: View {
    var name: String
    var image: String
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Circle()
                        .fill(Color.skyblue)
                        .frame(width: 60)
                    Text(image)
                        .font(.system(size: 40))
                }
                VStack(alignment: .leading){
                    Text(name)
                        .font(.system(size: 25))
                        .foregroundStyle(Color.black)
                        .bold()
                    
                    Text("프로필 보기")
                        .font(.system(size: 10))
                        .foregroundStyle(Color.gray)
                }
                Spacer()
            }
            
            
        }
    }
}

#Preview {
    ProfileView(name: "황은지", image: "😑")
}


