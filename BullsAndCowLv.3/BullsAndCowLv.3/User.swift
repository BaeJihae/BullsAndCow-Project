//
//  User.swift
//  BullsAndCowLv.3
//
//  Created by 배지해 on 3/14/24.
//

class User {
    
    // 정답까지의 횟수
    var count: Int = 0
    
    // 유저가 제시한 숫자
    var userNum: Int?
    
    init() {
        self.count = 0
        self.userNum = nil
    }
    
    init(count: Int, userNum: Int? = nil) {
        self.count = count
        self.userNum = userNum
    }
    
}
