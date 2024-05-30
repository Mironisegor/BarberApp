//
//  OrdersView.swift
//  BarberApp
//
//  Created by Mironov Egor on 28.05.2024.
//

import SwiftUI

struct OrdersView: View {
    var body: some View {
        ZStack {
            Color.accentColor
                .edgesIgnoringSafeArea(.all)
            Text("Ваши записи")
                .font(.system(size: 30, weight: .semibold))
                .foregroundColor(.white)
                .padding(.bottom, 700)
            VStack {
                HStack {
                    VStack {
                        Text("Дата")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.black)
                        Text("Время")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 15)
                    Spacer()
                    VStack {
                        Text("28.04.24")
                            .font(.system(size: 17, weight: .regular))
                            .foregroundColor(.black)
                        Text("17:30")
                            .font(.system(size: 17, weight: .regular))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 15)
                }
                .frame(width: 350, height: 60)
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            }
            .padding(.bottom, 550)
        }
    }
}

#Preview {
    OrdersView()
}
