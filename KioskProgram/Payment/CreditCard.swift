//
//  CreditCard.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/24.
//

import Foundation

// 카드
class CreditCard: Payment {
    
    // 결제방식 보여주는 함수
    override func checkListUserPayment() {
        print(String(repeating : "=", count : 30))
        print("[신용카드 결제 페이지입니다.]")
        let dic = ["1":"신용카드 결제완료", "2":"신용카드 결제 취소"]
        dic.sorted { $0 < $1 }.forEach { print("\($0.key). \($0.value)")}
    }
    
    // 메뉴얼 표시
    override func showList() {
        print("[아래 메뉴얼을 보시고 결제 방식을 골라 입력해주세요.]")
        paymentDic.sorted { $0 < $1 }.forEach { print("\($0.key). \($0.value)")}
    }
    
    // 결제방식 여부 선택
    override func choosePayment(input: String, orderType: String, items: [Array<Any>]) {
            switch input {
            case "1":
                print("신용카드 결제 완료")
                orderNumrber.printOrderNumber(type: orderType, items: items)
                exit(0)
            case "2":
                print("신용카드 결제 취소")
                break
            default:
                print("잘못된 번호 선택하셨습니다.")
                return
        }
    }
}
