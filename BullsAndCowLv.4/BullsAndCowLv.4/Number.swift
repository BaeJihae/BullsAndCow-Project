//
//  Number.swift
//  BullsAndCowLv.4
//
//  Created by 배지해 on 3/14/24.
//

class Number {
    
    private var num: Int?
    
    private func makeRandomNum() {
        var num = [Int]()
        
        while num.count < 3 {
            let a = Int.random(in: 0...9)
            if num == [] && a != 0 {
                num.append(a)
            }else if !num.contains(a) {
                num.append(a)
            }
        }
        
        self.num = num[0] * 100 + num[1] * 10 + num[2] * 1
    }
    
    func getRandomNum() -> Int? {
        makeRandomNum()
        return num
    }
}
