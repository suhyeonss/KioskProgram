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
    override func navigatorFunction(input: String) {
        
        while true {
            switch input {
            case "1":
                print("[신용카드 결제 페이지로 넘어갑니다.]")
                creditCard.checkListUserPayment()
                var input = readLine()!
                while true {
                    creditCard.choosePayment(input: input)
                    break
                }
                break
            case "2":
                print("[현금 결제 페이지로 넘어갑니다.]")
                cash.checkListUserPayment()
                var input = readLine()!
                while true {
                    cash.choosePayment(input: input)
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
    override func checkingUserPayment(input: Int) {
        if input == 1 {
            // 결제방식 보여주는 함수
            creditCard.checkListUserPayment()
            var answer = readLine()!
            creditCard.choosePayment(input: answer)
            
        } else if input == 2 {
            cash.checkListUserPayment()
            var answer = readLine()!
            cash.choosePayment(input: answer)
            
        }  else if input == 0 {
            print("[메뉴 선택 페이지로 넘어갑니다.]")
            
        } else {
            
        }
    }
}
