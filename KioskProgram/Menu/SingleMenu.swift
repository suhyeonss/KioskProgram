//
//  Menu.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class SingleMenu {
    let name: String
    let price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

extension SingleMenu {
    static let singleMenuList: [[SingleMenu]] = [
        [
                // 메뉴 저장 맥모닝
                SingleMenu(name: "빅맥 버거", price: 5200),
                SingleMenu(name: "맥스파이시 상하이 버거", price: 5200),
                SingleMenu(name: "1955 버거", price: 6400),
                SingleMenu(name: "베이컨 토마토 디럭스", price: 5800),
                SingleMenu(name: "맥크리스피 디럭스 버거", price: 6800),
                SingleMenu(name: "맥크리스피 클래식 버거", price: 5900),
                SingleMenu(name: "맥치킨 모짜렐라 버거", price: 5000),
                SingleMenu(name: "맥치킨 버거", price: 3500),
                SingleMenu(name: "더블 불로기 버거", price: 4500),
                SingleMenu(name: "에그 불고기 버거", price: 3500),
                SingleMenu(name: "불고기 버거", price: 2800),
                SingleMenu(name: "슈슈 버거", price: 4700),
                SingleMenu(name: "슈비 버거", price: 5800),
                SingleMenu(name: "쿼터파운더 치즈 버거", price: 5500),
                SingleMenu(name: "더블 쿼터파운더 치즈 버거", price: 7400),
                SingleMenu(name: "트리플 치즈 버거", price: 5800),
                SingleMenu(name: "더블 치즈 버거", price: 4700),
                SingleMenu(name: "치즈 버거", price: 2700),
                SingleMenu(name: "햄버거", price: 2500),
            ],
                                                         
            [
                SingleMenu(name: "에그맥머핀", price: 3000),
                SingleMenu(name: "소시지에그맥머핀", price: 3700),
                SingleMenu(name: "베이컨에그맥머핀", price: 3400),
                SingleMenu(name: "치킨치즈머핀", price: 3600),
                SingleMenu(name: "베이컨토마토에그머핀", price: 3700),
                SingleMenu(name: "핫케이크", price: 2800),
                SingleMenu(name: "디럭스브렉퍼스트", price: 5200),
            ]
        ]
}
