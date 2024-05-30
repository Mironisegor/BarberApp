//
//  RegistrationView.swift
//  BarberApp
//
//  Created by Gleb  on 30.05.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @StateObject var viewModel = RegistrationGridViewModel()
    var body: some View {
        ZStack {
            Color.accentColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Добро пожаловать")
                    .font(.system(size: 30, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.top, 10)
                Form {
                    Section(header: Text("E-mail")
                        .foregroundColor(.white)){
                            TextField("Введите email", text: $email)
                        }
                    Section(header: Text("Пароль")
                        .foregroundColor(.white)){
                            TextField("Введите пароль", text: $email)
                        }
                }
                .scrollContentBackground(.hidden)
                .padding(.top, 20)
                Button {
                } label: {
                    Text("Войти")
                        .font(.system(size: 22, weight: .medium))
                        .frame(width: 200, height: 50)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .padding(.bottom, 80)
                }
            }
        }
    }
}

#Preview {
    RegistrationView()
}
