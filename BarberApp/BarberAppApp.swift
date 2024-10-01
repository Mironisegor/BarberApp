//
//  BarberAppApp.swift
//  BarberApp
//
//  Created by Vladimir Fursov on 17.05.2024.
//

import SwiftUI

@main
struct BarberAppApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            GreetingView().environmentObject(order)
        }
    }
}
