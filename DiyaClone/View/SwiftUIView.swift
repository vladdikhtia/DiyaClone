//
//  SwiftUIView.swift
//  DiyaClone
//
//  Created by Vladyslav Dikhtiaruk on 19/03/2024.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        List{
            Section("Популярні послуги"){
                NavigationLink(destination: EmptyView()) {
                    Text("Hello World!")
                        .padding()
                }
                NavigationLink(destination: EmptyView()) {
                    Text("Hello World!")
                        .padding()
                }
                NavigationLink(destination: EmptyView()) {
                    Text("Hello World!")
                        .padding()
                }
                NavigationLink(destination: EmptyView()) {
                    Text("Hello World!")
                        .padding()
                }
            }
        }
        .frame(height: 340)
        .foregroundStyle(.black)
        .background(.ultraThinMaterial)
        
        
        
    }
}


#Preview {
    SwiftUIView()
}
