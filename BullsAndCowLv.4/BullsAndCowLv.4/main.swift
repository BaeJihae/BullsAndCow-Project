//
//  main.swift
//  BullsAndCowLv.4
//
//  Created by 배지해 on 3/14/24.
//

class MainPlay {
    
    init() {
        main()
    }
    
    let recordManager = RecordManager()
    
    // MARK: - 숫자를 선택하는 choiceNum() 함수
    private func choiceNum() -> Int {
        print("---------------------------------------")
        print("1. 게임 시작하기   2. 게임 기록보기  3. 종료하기 ")
        print("=======================================")
        
        let choice = readLine()
        
        guard let choice = choice else {
            return choiceNum()
        }
        guard let choice = Int(choice) else {
            print("숫자를 입력해주세요.")
            return choiceNum()
        }
        
        if 1 > choice || choice > 3 {
            print("번호를 잘못 입력하셨습니다. 다시 입력해주세요. ")
            return choiceNum()
        }else {
            return choice
        }
    }
    
    // MARK: - 메인 함수
    func main() {
        print("=======================================")
        print("환영합니다!! 원하시는 번호를 입력해주세요.")
        
        // 번호를 입력하는 함수
        let choice = choiceNum()
        
        switch choice {
        case 1 :
            let startGame = GamePlay()
            let gameCount = startGame.start()
            recordManager.setRecordArray(gameCount)
            return main()
        case 2 :
            // 기록보기
            recordManager.getRecordArray()
            return main()
        case 3 :
            // 종료하기
            print("[ 숫자 야구 게임을 종료합니다 ]")
            break
        default :
            return main()
        }
    }
}

// 게임 시작
var play = MainPlay()
