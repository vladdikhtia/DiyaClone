//
//  HomeView.swift
//  DiyaClone
//
//  Created by Vladyslav Dikhtiaruk on 18/03/2024.
//

import SwiftUI

struct HomeView: View {
  
    
    var body: some View {
            NavigationStack{
                
                ZStack{
                    Color.white
                    
                    LinearGradient(colors: [.blue.opacity(0.6),.yellow.opacity(0.4), .green.opacity(0.4)] , startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea(edges: .top)
                    
                    VStack{
                        ScrollView(.vertical){
                            NewMessageView()
                            
                            NavigationLink(destination: DetailView()) {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Незламність")
                                        .font(.title)
                                        .fontWeight(.medium)


                                    Text("Мапа Пунктів Незламності")
                                        .font(.headline)
                                    
                                    
                                    HStack{
                                        ZStack{
                                            Circle()
                                                .frame(height: 30)
                                                .foregroundStyle(.blue)
                                            Image(systemName: "shield.fill")
                                                .foregroundStyle(.white)
                                        }
                                        ZStack{
                                            Circle()
                                                .frame(height: 30)
                                                .foregroundStyle(.yellow)
                                            Image(systemName: "bolt.fill")
                                                .foregroundStyle(.black)
                                        }
                                        .offset(x: -10)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "arrow.forward.circle.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 30)
                                    }
                                }
                                .padding()
                                .background(.thickMaterial)
                                .clipShape(.rect(cornerRadius: 20))
                            }
                            .padding()
                            
                            DoButtonView()
                                .padding()
                            
                            
                            Spacer()
                            
                            ArmyOfDronesView()
                                .padding()
//                            SwiftUIView()
                        }
                    }

                    .foregroundColor(.black)
                .navigationTitle("Привіт, Владислав👋")
            }
        }
    }
    
}

#Preview {
    HomeView()
}


struct DetailView: View {
    var body: some View {
        VStack{
            Text("detail view")
        }
    }
}
