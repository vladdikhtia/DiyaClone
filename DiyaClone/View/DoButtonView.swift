//
//  DoButtonView.swift
//  DiyaClone
//
//  Created by Vladyslav Dikhtiaruk on 19/03/2024.
//

import SwiftUI

struct DoButtonView: View {
   
    var body: some View {
        HStack{
            DoButtonHelp(text: "Сканувати\nQR-код", image: "qrcode.viewfinder")
            Spacer()
            DoButtonHelp(text: "Військові\nоблігації", image: "building.columns.circle")
            Spacer()
            DoButtonHelp(text: "Чатбот\nєВорог", image: "ant.circle")
        }
    }
}

#Preview {
    DoButtonView()
}

//"ant.circle"
//"qrcode.viewfinder"
//Image(systemName: "building.columns.circle")

struct DoButtonHelp: View {
    let text: String
    let image: String
    
    var body: some View {
        NavigationLink(destination: {
           SwiftUIView()
        }, label: {
            VStack(alignment: .center){
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(18)
                    .foregroundStyle(.white)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 15))
                Text(text)
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
            }
        })
        
    }
}

struct Help: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}
