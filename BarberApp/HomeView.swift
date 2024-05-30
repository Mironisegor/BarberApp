//
//  HomeView.swift
//  BarberApp
//
//  Created by Mironov Egor on 28.05.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var date = Date.now
    @State private var fio = ""
    @State private var number = ""
    @StateObject var viewModel = RegistrationGridViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.accentColor
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    VStack {
                            DatePicker("Выберите Дату", selection: $date, in: ...Date())
                            .padding()
                            .accentColor(.blue)
                            .font(.system(size: 15, weight: .regular))
                            .frame(width: 350, height: 45)
                            .background(Color.white)
                            .cornerRadius(13)
                        TextField("ФИО", text: $fio)
                            .font(.system(size: 15, weight: .regular))
                            .padding()
                            .frame(width: 350, height: 45)
                            .background(Color.white)
                            .cornerRadius(13)

                        TextField("Номер телефона", text: $number)
                            .font(.system(size: 15, weight: .regular))
                            .padding()
                            .frame(width: 350, height: 45)
                            .background(Color.white)
                            .cornerRadius(13)
                    }
                    .scrollContentBackground(.hidden)
                    Spacer()
                    VStack {
                        Image(systemName: "scissors")
                            .font(.system(size: 72, weight: .light))
                            .foregroundColor(.white)
                        Text("barber")
                            .font(.system(size: 50, weight: .regular))
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 200)
                    Button {
                    } label: {
                        Text("Записаться")
                            .font(.system(size: 25, weight: .semibold))
                                    .frame(width: 200, height: 50)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                    .padding(.bottom, 50)
                    }
                }
                .padding(.top, 10)
            }
        }
        .navigationBarBackButtonHidden(false)
    }
}





#Preview {
    HomeView()
}
