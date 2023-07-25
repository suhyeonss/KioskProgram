//
//  ItemType.swift
//  KioskProgram
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import Foundation

class ItemType: MenuType {
    var itemType: String = ""
    
    override func chooseItemType() {
        print("\n[ 단품과 세트를 선택해 주세요 ]")
        print("1. 단품(Single)")
        print("2. 세트(Set)")
        print("0. 뒤로가기")
        print("\n번호를 입력해주세요: ", terminator: "")
    }
}
