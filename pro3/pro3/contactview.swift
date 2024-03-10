//
//  contactview.swift
//  pro3
//
//  Created by 황은지 on 3/10/24.
//

import SwiftUI
struct ContactView: View {
    @State var InputName: String = ""
    var SearchList: [Person] {
        if InputName.isEmpty {
            return contacts
        }
        else {
            return contacts.filter{($0.name.contains(InputName))}
        }
    }
    
    var body: some View {
        NavigationStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
                    .foregroundStyle(Color.gray)
                    .padding(.leading, 10)
                
                TextField("검색", text: $InputName)
                    .disableAutocorrection(true)
            }
            .frame(height: 35)
            .background(Color.skyblue)
            .cornerRadius(10)
            .padding(.horizontal, 10)
            
            
            List {
                NavigationLink {
                    ProfileDetailView(person: my)
                } label: {
                    ProfileView(name: my.name, image: my.imagename)
                }
                ForEach(SearchList, id:\.self) { person in
                    if person != my {
                        NavigationLink {
                            ProfileDetailView(person: Person)
                        } label: {
                            Text(person.name)
                        }
                    }
                }
            }
            .listStyle(.plain)
            
            Spacer()
            .navigationTitle("연락처")
        }
    }
}
