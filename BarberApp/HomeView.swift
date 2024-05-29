//
//  HomeView.swift
//  BarberApp
//
//  Created by Vladimir Fursov on 28.05.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var date = Date.now
    @State private var fio = ""
    @State private var number = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.accentColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Form {
                        Section {
                            DatePicker("Выберите Дату", selection: $date, in: ...Date())
                            TextField("ФИО", text: $fio)
                            TextField("Номер телефона", text: $number)
                        }
                    }
                    .scrollContentBackground(.hidden)
                    VStack {
                        Image(systemName: "scissors")
                            .font(.system(size: 72, weight: .light))
                            .foregroundColor(.white)
                        Text("barber")
                            .font(.system(size: 50, weight: .regular))
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 200)
                }
                .padding(.top, 10)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}





#Preview {
    HomeView()
}
