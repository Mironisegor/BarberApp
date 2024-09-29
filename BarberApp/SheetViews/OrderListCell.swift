//
//  OrderListCell.swift
//  BarberApp
//
//  Created by Gleb  on 03.06.2024.
//

import SwiftUI

struct OrderListCell: View {
    let order: Order
    var body: some View {
        VStack (spacing: 5) {
            HStack {
                Text("Барбершоп")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
                Spacer()
                Text(order.barberShop.nameOfBarbershop)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 15)
            HStack {
                Text("Услуга")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
                Spacer()
                Text(order.service.type)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 15)
            HStack {
                Text("Работник")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
                Spacer()
                Text(order.barber.name)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 15)
            HStack {
                Text("Дата")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
                Spacer()
                Text(order.data)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 15)
            HStack {
                Text("Время")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
                Spacer()
                Text(order.time)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 15)
        }
        .frame(width: 350, height: 130)
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    OrderListCell(order: MockData.sampleOrderOne)
}
