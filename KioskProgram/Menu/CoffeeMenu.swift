//
//  CoffeMenu.swift
//  KioskProgram
//
//  Created by JeonSangHyeok on 2023/07/25.
//

import Foundation

class CoffeeMenu: Menu {
    let name: String
    let price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

extension CoffeeMenu {
    static let coffeeMenuList: [CoffeeMenu] = [
        CoffeeMenu(name: "드립커피", price: 2000),
        CoffeeMenu(name: "아이스드립커피", price: 1800),
        CoffeeMenu(name: "아메리카노", price: 2600),
        CoffeeMenu(name: "아이스아메리카노", price: 2600),
        CoffeeMenu(name: "카푸치노", price: 3300),
        CoffeeMenu(name: "카페라떼", price: 3300),
        CoffeeMenu(name: "아이스카페라떼", price: 3300),
        CoffeeMenu(name: "바닐라라떼", price: 3800),
        CoffeeMenu(name: "아이스바닐라라떼", price: 3400),
        CoffeeMenu(name: "아이스크림라떼", price: 4500),
    ]
}
