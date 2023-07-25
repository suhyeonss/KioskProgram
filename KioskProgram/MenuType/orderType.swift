
class OrderType: MenuType {
    
    override func chooseOrderType() {
        print("\n[ 식사하실 장소를 선택해 주세요 ]")
        print("1. 매장에서 식사(Eat-in)")
        print("2. 테이크 아웃(Take-out)")
        print("0. 주문을 종료하십니까?")
        print("\n번호를 입력해주세요: ", terminator: "")
    }
}
