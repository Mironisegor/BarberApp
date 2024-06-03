//
//  MainView.swift
//  BarberApp
//
//  Created by Mironov Egor on 28.05.2024.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTabIndex = 0
    
    let icons = [
        "play.house",
        "rectangle.stack",
        "person"
    ]
    let namedForIcons = [
        "Главная",
        "Записи",
        "Аккаунт"
    ]
    
    var body: some View {
        ZStack {
            Color.accentColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    switch selectedTabIndex {
                    case 0:
                        HomeView()
                    case 1:
                        OrdersView()
                    default:
                        AccountView()
                    }
                }
                Spacer()
                HStack(spacing: 70) {
                    ForEach(0..<3, id: \.self, content: {number in
                        Button(action: {
                            self.selectedTabIndex = number
                        }, label: {
                            VStack(spacing: 1) {
                                Image(selectedTabIndex == number ? icons[number] + ".fill" : icons[number])
                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.white)
                                Text(namedForIcons[number])
                                    .font(.system(size: 13, weight: .regular))
                                    .foregroundColor(.white)
                            }
                        })
                    })
                }
                .frame(width: 420, height: 40)
                .padding(.top, 10)
                .background(Color("color1"))
            }
        }
    }
}


#Preview {
    MainView()
}
