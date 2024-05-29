//
//  MainView.swift
//  BarberApp
//
//  Created by Mironov Egor on 28.05.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("play.house.fill")
                    Text("Главная")
                        .foregroundColor(.accentColor)
                }
            OrdersView()
                .tabItem {
                    Image("rectangle.stack")
                    Text("Записи")
                        .foregroundColor(.accentColor)
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .black
        }
    }
}

#Preview {
    MainView()
}
