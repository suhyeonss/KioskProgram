//
//  DessertMenu.swift
//  KioskProgram
//
//  Created by JeonSangHyeok on 2023/07/25.
//

import Foundation

class DessertMenu {
    let name: String
    let price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

extension DessertMenu {
    static let dessertMenuList: [DessertMenu] = [
        DessertMenu(name: "오레오 맥플러리", price: 3000),
        DessertMenu(name: "딸기 오레오 맥플러리", price: 3000),
        DessertMenu(name: "초코 오레오 맥플러리", price: 3000),
        DessertMenu(name: "베리 스토리베리 맥플러리", price: 3000),
        DessertMenu(name: "초코 선데이 아이스크림", price: 2100),
        DessertMenu(name: "딸기 선데이 아이스크림", price: 2100),
        DessertMenu(name: "바닐라 선데이 아이스크림", price: 2100),
        DessertMenu(name: "오레오 아포가토", price: 3500),
        DessertMenu(name: "아이스크림콘", price: 1100),
        DessertMenu(name: "스트로베리콘", price: 1400),
    ]
}
