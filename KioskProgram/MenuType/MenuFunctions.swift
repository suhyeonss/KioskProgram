//
//  MenuFunction.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class MenuFunctions: MenuType {
    
    let orderType = OrderType()
    let itemType = ItemType()
    let menuType = MenuType()
    
    let singleMenuFunction = SingleMenuFunction()
    let setMenuFunction = SetMenuFunction()
    
    let singleMenuList: [[SingleMenu]] = SingleMenu.singleMenuList
    let setMenuList: [[SetMenu]] = SetMenu.setMenuList
    
    override func displayInfo() {
        while true {
            print("\"McDonalds에 오신걸 환영합니다\"")
            print(String(repeating: "=", count: 30))
            orderType.chooseOrderType()
            if let choiceInput = readLine(), let choiceOrder = Int(choiceInput) {
                switch choiceOrder {
                case 1:
                    itemType.chooseItemType()
                    if let choiceInput = readLine(), let choiceItem = Int(choiceInput) {
                        switch choiceItem {
                        case 1:
                            print("단품")
                            print(String(repeating: "=", count: 30))
                            var inputValue = choiceItem
                            showSingleMenu(for: inputValue)
                        case 2:
                            print("세트")
                            print(String(repeating: "=", count: 30))
                            var inputValue = choiceItem
                            showSetMenu(for: inputValue)
      
                        case 0:
                            print("뒤로가기")
                            print(String(repeating: "=", count: 30))

                            continue
                        default :
                            print("올바른 번호를 입력해주세요")
                            print(String(repeating: "=", count: 30))

                        }
                    }
                    return
                case 2:
                    print("포장")
                    print(String(repeating: "=", count: 30))
                    itemType.chooseItemType()
                    if let choiceInput = readLine(), let choiceItem = Int(choiceInput) {
                        switch choiceItem {
                        case 1:
                            print("단품")
                            var inputValue = choiceItem
                            showSingleMenu(for: inputValue)
                        case 2:
                            print("세트")
                            var inputValue = choiceItem
                            showSetMenu(for: inputValue)
                            
                        case 0:
                            print("뒤로가기")
                            continue
                        default :
                            print("올바른 번호를 입력해주세요")
                        }
                    }
                case 0:
                    print("주문을 종료합니다")
                    return
                default:
                    print("올바른 번호를 입력해주세요")
                }
            }
        }

    }
    
    override func showSingleMenu(for menucategory: Int) {
        var index = 1
        switch menucategory {
        case 0:
            print("메뉴를 선택해주세요\n(1: 맥모닝)\n(2: 사이드)\n(3: 맥카페)\n(4: 음료)\n")
            print(String(repeating: "=", count: 30))
            if let input = readLine(), let newCategory = Int(input) {
                showSingleMenu(for: newCategory) // 선택한 카테고리로 이동
            }
        case 1:
            print("\n맥모닝 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in singleMenuFunction.singleMacmoringArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
            
        case 2:
            print("\n사이드 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in singleMenuFunction.singleSideArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
        case 3:
            print("\n맥카페 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in singleMenuFunction.singleMaccafeArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
        case 4:
            print("\n음료 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in singleMenuFunction.singleDrinkArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
        default:
            print("\n잘못된 선택입니다.\n")
            print(String(repeating: "=", count: 30))
        }

        
        print("\n다른 메뉴를 확인하려면 0을 눌러주세요\n")
        print(String(repeating: "=", count: 30))
        if let input = readLine(), let newCategory = Int(input), newCategory == 0 {
            showSingleMenu(for: 0) // 카테고리 선택 화면으로 돌아감
        }
    }
    
    override func showSetMenu(for menucategory: Int) {
        var index = 1
        switch menucategory {
        case 0:
            print("메뉴를 선택해주세요\n(1: 맥모닝)\n(2: 사이드)\n(3: 맥카페)\n(4: 음료)\n")
            print(String(repeating: "=", count: 30))
            if let input = readLine(), let newCategory = Int(input) {
                showSetMenu(for: newCategory) // 선택한 카테고리로 이동
            }
        case 1:
            print("\n맥모닝 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in setMenuFunction.setMacmoringArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
            
        case 2:
            print("\n사이드 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in setMenuFunction.setSideArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
        case 3:
            print("\n맥카페 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in setMenuFunction.setMaccafeArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
        case 4:
            print("\n음료 목록\n")
            print(String(repeating: "=", count: 30))
            for menu in setMenuFunction.setDrinkArray {
                print("\(index). \(menu.name) - \(menu.price)원")
                index += 1
            }
        default:
            print("\n잘못된 선택입니다.\n")
            print(String(repeating: "=", count: 30))
        }

        
        print("\n다른 메뉴를 확인하려면 0을 눌러주세요\n")
        print(String(repeating: "=", count: 30))
        if let input = readLine(), let newCategory = Int(input), newCategory == 0 {
            showSetMenu(for: 0) // 카테고리 선택 화면으로 돌아감
        }
    }
    
}

