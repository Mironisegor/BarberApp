//
//  Barber.swift
//  BarberApp
//
//  Created by Gleb  on 03.06.2024.
//

import Foundation

struct BarberShop: Decodable, Identifiable, Hashable {
    let id: Int
    let image: String
    let nameOfBarbershop: String
    let rate: Float
    let adress: String
}

struct Barber: Decodable, Identifiable, Hashable {
    let id: Int
    let image: String
    let name: String
    let type: String
    let rate: Float
}

struct Service: Decodable, Identifiable, Hashable {
    let id: Int
    let minPrice: Int
    let maxPrice: Int
    let type: String
}

struct Order: Decodable, Identifiable, Hashable {
    let id: Int
    let service: Service
    let barber: Barber
    let barberShop: BarberShop
    let data: String
    let time: String
}

struct MockData {
    static let sampleBarberShopOne = BarberShop(id: 1, image: "person.circle", nameOfBarbershop: "Cut Cut", rate: 5.0, adress: "г.Таганрог, ул. Петровская 68")
    static let sampleBarberShopTwo = BarberShop(id: 2, image: "person.circle", nameOfBarbershop: "Men`s Cut", rate: 4.8, adress: "г.Таганрог, ул. Чехова 52")
    static let sampleBarberShopThree = BarberShop(id: 3, image: "person.circle", nameOfBarbershop: "Barber", rate: 0, adress: "г.Таганрог, ул. Греческая 15")
    
    static let barberShops = [sampleBarberShopOne, sampleBarberShopTwo, sampleBarberShopThree]
    
    
    static let sampleBarberOne = Barber(id: 1, image: "person.circle", name: "Денис",type: "Барбер", rate: 5.0)
    static let sampleBarberTwo = Barber(id: 2, image: "person.circle", name: "Арег",type: "Барбер-стажер", rate: 0)
    static let sampleBarberThree = Barber(id: 3, image: "person.circle", name: "Алина",type: "Стилист", rate: 4.9)
    
    static let barbers = [sampleBarberOne, sampleBarberTwo, sampleBarberThree]
    
    static let sampleServiceOne = Service(id: 1, minPrice: 1800, maxPrice: 2000, type: "Комплекс: стрижка + моделирование бороды")
    static let sampleServiceTwo = Service(id: 2, minPrice: 1200, maxPrice: 1400, type: "Стрижка любой сложности")
    static let sampleServiceThree = Service(id: 3, minPrice: 0, maxPrice: 600, type: "Стрижка без насадки")
    static let sampleServiceFour = Service(id: 4, minPrice: 1000, maxPrice: 1100, type: "Стрижка машинкой(насадки/фейд)")
    static let sampleServiceFive = Service(id: 5, minPrice: 0, maxPrice: 400, type: "Укладка волос")
    static let sampleServiceSix = Service(id: 6, minPrice: 0, maxPrice: 600, type: "Тонирование бороды")
    
    static let services = [sampleServiceOne, sampleServiceTwo, sampleServiceThree, sampleServiceFour, sampleServiceFive, sampleServiceSix]
    
    
    static let sampleOrderOne = Order(id: 1, service: sampleServiceOne, barber: sampleBarberOne, barberShop: sampleBarberShopOne, data: "30.08.2024", time: "19:30")
    static let sampleOrderTwo = Order(id: 2, service: sampleServiceTwo, barber: sampleBarberTwo, barberShop: sampleBarberShopTwo, data: "10.04.2024", time: "13:23")
    static let sampleOrderThree = Order(id: 3, service: sampleServiceThree, barber: sampleBarberThree, barberShop: sampleBarberShopThree, data: "30.08.2024", time: "19:30")
    
    static var orders = [sampleOrderOne, sampleOrderTwo, sampleOrderThree]
}
