//
//  Order.swift
//  BarberApp
//
//  Created by Vladimir Fursov on 01.10.2024.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [OrderItem] = []
}
