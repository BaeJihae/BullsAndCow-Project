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
    
    enum Choice: String {
        case start = "1"
        case record = "2"
        case exit = "3"
    }
    
    // MARK: - 숫자를 선택하는 choiceNum() 함수
    private func choiceNum() -> Choice {
        
        let choice = readLine()
        
        guard let choice = choice else { return choiceNum() }
        guard let choice = Choice(rawValue: choice) else {
            print("잘못 입력하였습니다. 다시 입력해주세요.")
            return choiceNum()
        }
        return choice
    }
    
    // MARK: - 메인 함수
    func main() {
        print("=======================================")
        print("환영합니다!! 원하시는 번호를 입력해주세요.\n")
        print("1. 게임 시작하기   2. 게임 기록보기  3. 종료하기 ")
        print("=======================================")
        
        switch choiceNum() {
        case .start :
            let startGame = GamePlay()
            let gameCount = startGame.start()
            recordManager.setRecordArray(gameCount)
            return main()
        case .record :
            // 기록보기
            recordManager.getRecordArray()
            return main()
        case .exit :
            // 종료하기
            print("[ 숫자 야구 게임을 종료합니다 ]")
            break
        }
    }
}

// 게임 시작
var play = MainPlay()
