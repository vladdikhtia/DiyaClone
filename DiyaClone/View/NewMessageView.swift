//
//  NewMessageView.swift
//  DiyaClone
//
//  Created by Vladyslav Dikhtiaruk on 19/03/2024.
//

import SwiftUI

struct NewMessageView: View {
    let messages = ["Вам надійшов запит на погодження договору купівлі-продажу авто.", "Термін дії посвідчення водія от-от спливе"]
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Нові повідомлення")
                .padding(.horizontal)
            
            TabView {
                ForEach(messages, id: \.self){ message in
                    VStack(alignment: .leading, spacing: 8){
                        Text("Зверніть увагу")
                        Text(message)
                    }
                    .padding()
                    .frame(width: 361)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .offset(y:-20)
                }
            }
            .frame(height: 145)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .contentMargins(20, for: .scrollIndicators)
            .onAppear {
                  setupAppearance()
            }
        }
        
        
    }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
      }
}

#Preview {
    NewMessageView()
}
