//
//  SideMenu.swift
//  KioskProgram
//
//  Created by JeonSangHyeok on 2023/07/25.
//

import Foundation

class SideMenu: Menu {
    let name: String
    let smallPrice: Int?
    let mediumPrice: Int
    let largePrice: Int?
    
    init(name: String, smallPrice: Int?, mediumPrice: Int, largePrice: Int?) {
        self.name = name
        self.smallPrice = smallPrice
        self.mediumPrice = mediumPrice
        self.largePrice = largePrice
    }
}

extension SideMenu {
    static let sideMenuList: [SideMenu] = [
        SideMenu(name: "상하이 치킨 스낵랩", smallPrice: nil, mediumPrice: 2700, largePrice: nil),
        SideMenu(name: "맥너겟", smallPrice: 2500, mediumPrice: 3500, largePrice: 4700),
        SideMenu(name: "맥스파이시 치킨 텐더", smallPrice: 2700, mediumPrice: 5600, largePrice: nil),
        SideMenu(name: "코울슬로", smallPrice: nil, mediumPrice: 1900, largePrice: nil),
        SideMenu(name: "골든 모짜렐라 치즈스틱", smallPrice: 2500, mediumPrice: 4200, largePrice: nil),
        ]
}
