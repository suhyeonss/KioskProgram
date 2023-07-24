//
//  main.swift
//  KioskProgram
//
//  Created by t2023-m0065 on 2023/07/24.
//

/*
 1. 전상혁 -> 포장여부 / 단품 세트 클래스
 2. 하호형 -> 기본메뉴
 3. 이수현 -> 장바구니 클래스
 4. 김준우 -> 결제 클래스
 5. 홍준영 -> 주문번호 생성 클래스
 */

class Main {
    let orderType = OrderType()
    let itemType = ItemType()
    
    func displayInfo() {
        while true {
            print("\"McDonalds에 오신걸 환영합니다\"")
            orderType.chooseOrderType()
            if let choiceInput = readLine(), let choiceOrder = Int(choiceInput) {
                switch choiceOrder {
                case 1:
                    orderType.orderType = "매장"
                    itemType.chooseItemType()
                    if let choiceInput = readLine(), let choiceItem = Int(choiceInput) {
                        switch choiceItem {
                        case 1:
                            itemType.itemType = "단품"
                        case 2:
                            itemType.itemType = "세트"
                        case 0:
                            print("뒤로가기")
                            continue
                        default :
                            print("올바른 번호를 입력해주세요")
                        }
                    }
                    return
                case 2:
                    orderType.orderType = "포장"
                    itemType.chooseItemType()
                    if let choiceInput = readLine(), let choiceItem = Int(choiceInput) {
                        switch choiceItem {
                        case 1:
                            itemType.itemType = "단품"
                        case 2:
                            itemType.itemType = "세트"
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
}

let mcdonalds = Main()

mcdonalds.displayInfo()


