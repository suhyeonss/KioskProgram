//
//  SetMenu.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class SetMenu {
    let name:String
    let price:Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

extension SetMenu {
    static let setMenuList: [[SetMenu]] = [
        // 메뉴 저장 맥모닝
        [
            SetMenu(name: "에그맥머핀", price: 3000),
            SetMenu(name: "에그맥머핀세트", price: 4400),
            SetMenu(name: "소시지에그맥머핀", price: 3700),
            SetMenu(name: "소시지에그맥머핀세트", price: 4800),
            SetMenu(name: "베이컨에그맥머핀", price: 3400),
            SetMenu(name: "베이컨에그맥머핀세트", price: 4600),
            SetMenu(name: "치킨치즈머핀", price: 3600),
            SetMenu(name: "치킨치즈머핀세트", price: 4900),
            SetMenu(name: "베이컨토마토에그머핀", price: 3700),
            SetMenu(name: "베이컨토마토에그머핀세트", price: 5000),
            SetMenu(name: "핫케이크", price: 2800),
            SetMenu(name: "디럭스브렉퍼스트", price: 5200),
        ],
        
        //메뉴 저장 사이드
        [
            
            SetMenu(name: "상하이치킨스낵랩", price: 2700),
            SetMenu(name: "맥너겟", price: 2500),
            SetMenu(name: "맥스파이시치킨텐더", price: 2700),
            SetMenu(name: "맥윙", price: 3200),
            SetMenu(name: "후렌치후라이", price: 1300),
            SetMenu(name: "해쉬브라운", price: 1300),
            SetMenu(name: "코울슬로", price: 1900),
            SetMenu(name: "골든모짜렐라치즈스틱", price: 2500),
            SetMenu(name: "아이스크림콘", price: 1100),
            SetMenu(name: "스트로베리콘", price: 1400),
            SetMenu(name: "맥플러리", price: 3000),
            SetMenu(name: "오레오아포가토", price: 3500),
            SetMenu(name: "선데이아이스크림", price: 1600),
            SetMenu(name: "밀크셰이크", price: 2800),
            SetMenu(name: "칠러", price: 2200),
        ],
        
        //메뉴 저장 맥카페
        [
            
            SetMenu(name: "드립커피", price: 2000),
            SetMenu(name: "아이스드립커피", price: 1800),
            SetMenu(name: "아메리카노", price: 2600),
            SetMenu(name: "아이스아메리카노", price: 2600),
            SetMenu(name: "카푸치노", price: 3300),
            SetMenu(name: "카페라떼", price: 3300),
            SetMenu(name: "아이스카페라떼", price: 3300),
            SetMenu(name: "바닐라라떼", price: 3800),
            SetMenu(name: "아이스바닐라라떼", price: 3400),
            SetMenu(name: "아이스크림라떼", price: 4500),
        ],
        
        //메뉴 저장 음료
        [
            SetMenu(name: "코카콜라", price: 1700),
            SetMenu(name: "코카콜라제로", price: 1700),
            SetMenu(name: "환타", price: 1700),
            SetMenu(name: "스프라이트", price: 1700),
            SetMenu(name: "쉐이크", price: 2800),
            SetMenu(name: "순수생수", price: 1300),
        ],
        
    ]
}
