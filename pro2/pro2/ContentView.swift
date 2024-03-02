//
//  ContentView.swift
//  pro2
//
//  Created by 황은지 on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var img:String? = nil
    @State var name:String? = nil
    var body: some View {

        VStack{
            if let name        {
                Text("선택한 항목은 \(name)입니다.")
                }
            if let img
            {
                Image(img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(20)
                }
            HStack {
                Button(action:
                        {
                    img = "rock"
                    name = "바위"
                },
                    label: {
                    ZStack
                    {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.orange)
                            .frame(width: 100,height: 100)
                        Text("주먹")
         
                    }

                })
                Button(action: {
                    img = "sci"
                    name = "가위"
                },
                    label: {
                    ZStack
                    {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.green)
                            .frame(width: 100,height: 100)
                        Text("가위")
                        
            
                    }
                })
                Button(action: 
                       { 
                    img = "paper"
                    name = "보"
                },
                    label: {
                    ZStack
                    {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.pink)
                            .frame(width: 100,height: 100)
                        Text("보")
                        
            
                    }
                })
            }
        
        }
        Button(action: {
            img = nil
            name = nil
        }
               
               , label: {
            ZStack
            {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.yellow)
                    .frame(width: 300,height: 100)
                Text("그만하기 ")
                
    
            }
        })
    }

}

#Preview {
    ContentView()
}
