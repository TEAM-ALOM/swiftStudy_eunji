//
//  profiledetailview.swift
//  pro3
//
//  Created by 황은지 on 3/10/24.
//
import SwiftUI

struct ProfileDetailView: View {
    var person: Person
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Circle()
                        .fill(Color.skyblue)
                        .frame(width: 300)
                    Text(person.imagename)
                        .font(.system(size: 180))
                }
                
                Text(person.name)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundStyle(Color.white)
                
                Button {
                    print(person.number)
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.black)
                            .frame(height: 60)
                            
                        Text(person.number)
                            .font(.system(size: 20))
                            .foregroundStyle(Color.white)
                    }
                    .padding()
                }

            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.top, 100)
            
        }
        .background(Gradient(colors: [.gray, .white]))
        
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileDetailView(person: my)
}
