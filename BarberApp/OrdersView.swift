//
//  OrdersView.swift
//  BarberApp
//
//  Created by Mironov Egor on 28.05.2024.
//

import SwiftUI

struct OrdersView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                
                List(MockData.orderItems) { order in
                    OrderListCell(order: order)
                }
                .navigationTitle("Ваши Записи")
            }
        }
    }
}

#Preview {
    OrdersView()
}

