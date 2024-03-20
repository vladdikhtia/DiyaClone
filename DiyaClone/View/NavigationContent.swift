//
//  ContentView.swift
//  DiyaClone
//
//  Created by Vladyslav Dikhtiaruk on 18/03/2024.
//

import SwiftUI

struct NavigationContent: View {
    

    var body: some View {
        ZStack{
            
            TabView{
                
                Group{
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    Text("2")
                        .tabItem {
                            Label("Documents", systemImage: "square.text.square")
                        }
                    Text("3")
                        .tabItem {
                            Label("Services", systemImage: "bolt.square")
                        }
                    Text("4")
                        .tabItem {
                            Label("Menu", systemImage: "person.crop.circle")
                            
                        }
                }
                .toolbarColorScheme(.dark, for: .tabBar)
                .toolbarBackground(.black, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                
            }
        }
    }
    
}

#Preview {
    NavigationContent()
}
