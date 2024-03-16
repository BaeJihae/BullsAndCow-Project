//
//  GamePlay.swift
//  BullsAndCowLv.4
//
//  Created by 배지해 on 3/14/24.
//

class GamePlay {
    
    func start() -> Int {
        print("[ 숫자 야구 게임이 시작되었습니다. ]")
        
        let number = Number()
        let user = User()
        
        number.getRandomNum()
        
        while true {
            print("------------------------------------------")
            print("0부터 9까지를 자리수로 가지는 3자리 정수를 입력해주세요.")
            print("------------------------------------------")
            
            guard let userNum = user.getUserNum() else { return 0 }
            user.setUserCount()
            guard let num = number.num else { return 0 }
            
            if userNum == num {
                // 정답을 맞힌 경우
                let userCount = user.getUserCount()
                print("정답입니다!")
                print("축하합니다. \(userCount)번만에 정답을 맞추었습니다!\n")
                return userCount
            }else{
                // 정답을 틀린 경우
                // 비교하는 함수
                print("틀렸습니다!")
                print(compareNum(userNum, num))
            }
        }
    }
    
    private func compareNum(_ user: Int, _ com: Int) -> String {
        
        // ball과 strike와 파울 계산
        var ball = 0
        var strike = 0
        var faul = 0
        
        let arrayUser: [Int] = String(user).map{ Int(String($0))! }
        let arrayCom: [Int] = String(com).map{ Int(String($0))! }
        
        arrayUser.enumerated().forEach{ (i, userNum) in
            if arrayCom.contains(userNum) {
                if arrayCom.firstIndex(of: userNum)! == i {
                    strike += 1
                }else {
                    ball += 1
                }
            }else {
                faul += 1
            }
        }
        
        if faul == 3 {
            return "파울\n"
        }else if strike == 0{
            return "\(ball)볼\n"
        }else if ball == 0{
            return "\(strike)스트라이크\n"
        }else {
            return "\(strike)스트라이크 \(ball)볼\n"
        }
    }
}
