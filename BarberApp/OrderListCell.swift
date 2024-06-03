//
//  OrderListCell.swift
//  BarberApp
//
//  Created by Gleb  on 03.06.2024.
//

import SwiftUI

struct OrderListCell: View {
    let order: Barber
    var body: some View {
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
                Text(order.data)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
                Text(order.time)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 15)
        }
        .frame(width: 350, height: 60)
        .background(Color.green)
        .cornerRadius(10)
    }
}

#Preview {
    OrderListCell(order: MockData.sampleBarberOne)
}
