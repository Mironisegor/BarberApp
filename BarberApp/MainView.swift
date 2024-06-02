//
//  MainView.swift
//  BarberApp
//
//  Created by Mironov Egor on 28.05.2024.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTabIndex = 0
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            HomeView()
                .tabItem {
                    ExtractedView1(imageName: selectedTabIndex == 0 ? "play.house.fill": "play.house")
                }
                .tag(0) // Устанавливаем тег для первой вкладки
            
            OrdersView()
                .tabItem {
                    ExtractedView2(imageName: selectedTabIndex == 1 ? "rectangle.stack.fill" : "rectangle.stack")
                }
                .tag(1) // Устанавливаем тег для второй вкладки
        }
        .tint(.accentColor)
        .onAppear(perform: {
                    UITabBar.appearance().unselectedItemTintColor = .white
                    //3
                    UITabBarItem.appearance().badgeColor = .white
                    //4
                    UITabBar.appearance().backgroundColor = UIColor(Color("color1")).withAlphaComponent(1)
                    //5
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                })
    }
}


#Preview {
    MainView()
}

struct ExtractedView1: View {
    var imageName = ""
    var body: some View {
        Image(imageName)
        Text("Главная")
    }
}

struct ExtractedView2: View {
    var imageName = ""
    var body: some View {
        Image(imageName)
        Text("Записи")
    }
}
