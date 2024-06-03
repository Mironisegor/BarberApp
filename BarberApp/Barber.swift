//
//  Barber.swift
//  BarberApp
//
//  Created by Gleb  on 03.06.2024.
//

import Foundation


struct Barber: Decodable, Identifiable {
    let id: Int
    let data: String
    let time: String
}

struct MockData {
    static let sampleBarberOne = Barber(id: 1, data: "23.05.2024", time: "14:30")
    static let sampleBarberTwo = Barber(id: 2, data: "30.08.2024", time: "19:30")
    static let sampleBarberThree = Barber(id: 3, data: "31.11.2024", time: "8:30")
    
    static let orderItems = [sampleBarberOne, sampleBarberTwo, sampleBarberThree]
}
