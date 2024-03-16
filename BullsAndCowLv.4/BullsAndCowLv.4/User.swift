//
//  User.swift
//  BullsAndCowLv.4
//
//  Created by 배지해 on 3/14/24.
//

class User {
    
    // 정답까지의 횟수
    private var count: Int = 0
    
    // 유저가 제시한 숫자
    private var userNum: Int?
    
    // 유저에게 입력값을 받는 함수
    private func getUserInput() {
        let input = readLine()
        
        // 문자열이 입력되지 않았을 경우 에러처리
        guard let input = input else { return getUserInput() }
        
        // 문자열이 3자리가 아닐 경우 에러처리
        if input.count != 3 {
            print("0부터 9까지를 자릿수로 가지는 3자리 숫자를 입력해주세요.")
            return getUserInput()
        }
        
        // 문자열의 첫번째가 0이 포함되어 있는 경우 에러처리
        if input.first == "0" {
            print("세자리 숫자를 입력해주세요.")
            return getUserInput()
        }
        
        // 문자열이 숫자가 아닐 경우 에러 처리
        guard let input = Int(input) else {
            print("숫자를 입력해주세요.")
            return getUserInput()
        }
        
        // 문자열이 중복이 된 경우 에러처리
        // 백의 자리, 십의 자리, 일의 자리
        let hundred = input / 100
        let tenDigit = ( input % 100 ) / 10
        let one = input % 10
        
        if hundred == tenDigit || tenDigit == one || hundred == one {
            print("숫자가 중복되었습니다.")
            return getUserInput()
        }
        
        self.userNum = input
    }
    
    func getUserNum() -> Int? {
        getUserInput()
        return userNum
    }
    
    func setUserCount() {
        count += 1
    }
    
    func getUserCount() -> Int {
        return count
    }
    
}
