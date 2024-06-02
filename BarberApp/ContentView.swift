//
//  ContentView.swift
//  BarberApp
//
//  Created by Mironov Egor on 17.05.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = RegistrationGridViewModel()
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea(.all)
                VStack {
                    Image(systemName: "scissors")
                        .font(.system(size:72, weight: .light))
                        .foregroundColor(.white)
                    Text("barber")
                        .font(.system(size: 50, weight: .regular))
                        .foregroundColor(.white)
                        .padding(.bottom, 50)
                }
                VStack {
                    NavigationLink(destination: RegistrationView()) {
                        HStack {
                            Image(systemName: "person.fill")
                            Text("Продолжить как клиент")
                                .font(.system(size: 18, weight: .semibold))
                        }
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding(.top, 500)
                    }
                    NavigationLink(destination: BarberView()) {
                        Text("Продолжить как барбер")
                            .font(.system(size: 18, weight: .semibold))
                            .frame(width: 300, height: 50)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.top, 10)
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
