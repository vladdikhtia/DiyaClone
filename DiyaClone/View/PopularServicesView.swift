//
//  PopularServicesView.swift
//  DiyaClone
//
//  Created by Vladyslav Dikhtiaruk on 21/03/2024.
//

import SwiftUI

struct PopularServicesView: View {
    let services = ["Реєстрація пошкодженого майна", "Заміна водійського посвідчення", "Податки ФОП"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Популярні послуги")
                .padding(.horizontal)
            List{
                ForEach(services, id: \.self){ service in
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Text(service)
                                .font(.subheadline)
                            Spacer()
                            Image(systemName: "arrow.forward.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 30)
                        }
                        .padding(.vertical, 4)
                        .foregroundStyle(.black)
                    })
                    
                }
                .listRowSeparatorTint(.blue.opacity(0.4), edges: .all)
            }
            .listStyle(.insetGrouped)
            .scrollContentBackground(.hidden)
            .frame(height: 290)
            .offset(y:-20)
            
        }
    }
}

#Preview {
    PopularServicesView()
}
