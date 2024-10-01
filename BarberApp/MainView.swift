//
//  MainView.swift
//  BarberApp
//
//  Created by Mironov Egor on 28.05.2024.
//

import SwiftUI

struct MainView: View {
    let customDarkGrayColor = Color(red: 29.0 / 255.0, green: 29 / 255.0, blue: 29 / 255.0)
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
                HStack(spacing: 85) {
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
                .frame(width: 420, height: 50)
                .padding(.top, 10)
                .background(customDarkGrayColor)
                
            }
        }
    }
}


#Preview {
    MainView()
}
