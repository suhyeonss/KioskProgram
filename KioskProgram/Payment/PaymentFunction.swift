//
//  PaymentFunction.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/24.
//
//
import Foundation

class PaymentFunction: Payment {
    
    let creditCard = CreditCard()
    let cash = Cash()
    
    override func showList() {
        print("[1. 신용카드 결제 페이지.]")
        print("[2. 현금 결제 페이지.]")
        print("[0. 메뉴 선택 페이지.]")
    }
    
    // 사용자 결제 방식 입력값에 따른 페이지 이동
    override func navigatorFunction(input: String, orderType: String, items: [Array<Any>]) {
        
        while true {
            switch input {
            case "1":
                print("[신용카드 결제 페이지로 넘어갑니다.]\n")
                creditCard.checkListUserPayment()
                print("\n번호를 입력해주세요: ", terminator: "")
                var input = readLine()!
                while true {
                    creditCard.choosePayment(input: input, orderType: orderType, items: items)
                    break
                }
                break
            case "2":
                print("[현금 결제 페이지로 넘어갑니다.]\n")
                cash.checkListUserPayment()
                print("\n번호를 입력해주세요: ", terminator: "")
                var input = readLine()!
                while true {
                    cash.choosePayment(input: input, orderType: orderType, items: items)
                    break
                }
                break
            case "0":
                print("[메뉴 선택 페이지로 넘어갑니다.]")
                return
            default:
                print("[잘못된 값입니다.]")
                continue
            }
            break
        }
    }
    
    // 입력값에 따른 결제 여부
    override func checkingUserPayment(input: Int, orderType: String, items: [Array<Any>]) {
        if input == 1 {
            // 결제방식 보여주는 함수
            creditCard.checkListUserPayment()
            print("\n번호를 입력해주세요: ", terminator: "") 
            var answer = readLine()!
            creditCard.choosePayment(input: answer, orderType: orderType, items: items)
            
        } else if input == 2 {
            cash.checkListUserPayment()
            print("\n번호를 입력해주세요: ", terminator: "")
            var answer = readLine()!
            cash.choosePayment(input: answer, orderType: orderType, items: items)
            
        }  else if input == 0 {
            print("[메뉴 선택 페이지로 넘어갑니다.]")
            
        } else {
            
        }
    }
}
