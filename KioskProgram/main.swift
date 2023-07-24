//
//  main.swift
//  KioskProgram
//
//  Created by 하호형 on 2023/07/24.
//

import Foundation


//메뉴 저장 맥모닝
menu.addMacMoring(name: "에그맥머핀", price: 3000)
menu.addMacMoring(name: "에그맥머핀세트", price: 4400)
menu.addMacMoring(name: "소시지에그맥머핀", price: 3700)
menu.addMacMoring(name: "소시지에그맥머핀세트", price: 4800)
menu.addMacMoring(name: "베이컨에그맥머핀", price: 3400)
menu.addMacMoring(name: "베이컨에그맥머핀세트", price: 4600)
menu.addMacMoring(name: "치킨치즈머핀", price: 3600)
menu.addMacMoring(name: "치킨치즈머핀세트", price: 4900)
menu.addMacMoring(name: "베이컨토마토에그머핀", price: 3700)
menu.addMacMoring(name: "베이컨토마토에그머핀세트", price: 5000)
menu.addMacMoring(name: "핫케이크", price: 2800)
menu.addMacMoring(name: "디럭스브렉퍼스트", price: 5200)

//메뉴 저장 사이드
menu.addSide(name: "상하이치킨스낵랩", price: 2700)
menu.addSide(name: "맥너겟", price: 2500)
menu.addSide(name: "맥스파이시치킨텐더", price: 2700)
menu.addSide(name: "맥윙", price: 3200)
menu.addSide(name: "후렌치후라이", price: 1300)
menu.addSide(name: "해쉬브라운", price: 1300)
menu.addSide(name: "코울슬로", price: 1900)
menu.addSide(name: "골든모짜렐라치즈스틱", price: 2500)
menu.addSide(name: "아이스크림콘", price: 1100)
menu.addSide(name: "스트로베리콘", price: 1400)
menu.addSide(name: "맥플러리", price: 3000)
menu.addSide(name: "오레오아포가토", price: 3500)
menu.addSide(name: "선데이아이스크림", price: 1600)
menu.addSide(name: "밀크셰이크", price: 2800)
menu.addSide(name: "칠러", price: 2200)

//메뉴 저장 맥카페
menu.addMacCafe(name: "드립커피", price: 2000)
menu.addMacCafe(name: "아이스드립커피", price: 1800)
menu.addMacCafe(name: "아메리카노", price: 2600)
menu.addMacCafe(name: "아이스아메리카노", price: 2600)
menu.addMacCafe(name: "카푸치노", price: 3300)
menu.addMacCafe(name: "카페라떼", price: 3300)
menu.addMacCafe(name: "아이스카페라떼", price: 3300)
menu.addMacCafe(name: "바닐라라떼", price: 3800)
menu.addMacCafe(name: "아이스바닐라라떼", price: 3400)
menu.addMacCafe(name: "아이스크림라떼", price: 4500)

//메뉴 저장 음료
menu.addDrink(name: "코카콜라", price: 1700)
menu.addDrink(name: "코카콜라제로", price: 1700)
menu.addDrink(name: "환타", price: 1700)
menu.addDrink(name: "스프라이트", price: 1700)
menu.addDrink(name: "쉐이크", price: 2800)
menu.addDrink(name: "순수생수", price: 1300)


func showMenu(for menucategory: Int) {
    var index = 1
    switch menucategory {
    case 0:
            print("메뉴를 선택해주세요\n(1: 맥모닝)\n(2: 사이드)\n(3: 맥카페)\n(4: 음료)\n")
            if let input = readLine(), let newCategory = Int(input) {
                showMenu(for: newCategory) // 선택한 카테고리로 이동
                }
    case 1:
        print("\n맥모닝 목록\n")
        for menu in menu.macmoringArray {
            print("\(index). \(menu.name) - \(menu.price)원")
            index += 1
        }
    case 2:
        print("\n사이드 목록\n")
        for menu in menu.sideArray {
            print("\(index). \(menu.name) - \(menu.price)원")
            index += 1
        }
    case 3:
        print("\n맥카페 목록\n")
        for menu in menu.maccafeArray {
            print("\(index). \(menu.name) - \(menu.price)원")
            index += 1
        }
    case 4:
        print("\n음료 목록\n")
        for menu in menu.drinkArray {
            print("\(index). \(menu.name) - \(menu.price)원")
            index += 1
        }
    default:
        print("\n잘못된 선택입니다.\n")
    }
    
    print("\n다른 메뉴를 확인하려면 0을 눌러주세요\n")
    if let input = readLine(), let newCategory = Int(input), newCategory == 0 {
        showMenu(for: 0) // 카테고리 선택 화면으로 돌아감
    }
        
}
showMenu(for: 0)
