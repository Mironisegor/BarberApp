//
//  RegistrationViewModel.swift
//  BarberApp
//
//  Created by Gleb  on 30.05.2024.
//

import SwiftUI

final class RegistrationGridViewModel: ObservableObject {
    var selectedFramework: RegistrationView? {
        didSet {
            isShowingRegistration = true
        }
    }
    @Published var isShowingRegistration = false
}
