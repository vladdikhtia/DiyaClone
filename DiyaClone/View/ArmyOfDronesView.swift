//
//  ArmyOfDronesView.swift
//  DiyaClone
//
//  Created by Vladyslav Dikhtiaruk on 20/03/2024.
//

import SwiftUI

struct ArmyOfDronesView: View {
    var body: some View {
        
        NavigationLink(destination: EmptyView()) {
            VStack{
                Image("drone")
                    .resizable()
                    .frame(height: 200)
                    .scaledToFit()

                HStack{
                    Text("Допомогти армії")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image(systemName: "arrow.forward.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                        .frame(height: 30)
                }
                .padding()
                .background(.black)
                .clipShape(
                    .rect(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 20,
                        bottomTrailingRadius: 20,
                        topTrailingRadius: 0
                    )
                )
                .offset(y:-25)
                
                
            }
            .clipShape(.rect(cornerRadius: 20))
            

        }
    }
}

#Preview {
    ArmyOfDronesView()
}
