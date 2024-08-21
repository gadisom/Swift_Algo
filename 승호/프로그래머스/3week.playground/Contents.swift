import UIKit

// 소수 만들기
//func solution(_ nums:[Int]) -> Int {
//    var result: Set<[Int]> = []
//    
//    for index1 in 0..<nums.count-2 {
//        for index2 in index1+1..<nums.count-1 {
//            for index3 in index2+1..<nums.count {
//                let number = nums[index1] + nums[index2] + nums[index3]
//                if insu(number) {
//                    result.insert([nums[index1], nums[index2], nums[index3]])
//                }
//            }
//        }
//    }
//    
//    return result.count
//}
//
//func insu(_ n: Int) -> Bool{
//    var count = 0
//    var i = 1
//    while i*i <= n {
//        if n % i == 0{
//            if i * i == n {
//                count += 1
//                
//            } else {
//                count += 2
//            }
//        }
//        i += 1
//    }
//    
//    if count == 2 {
//        return true
//    }
//    
//    return false
//}
//
//solution([1,2,7,6,4])

// 과일 장수
//func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
//    var score = score.sorted(by: >)
//    
//    var arr: [[Int]] = []
//    
//    for i in 0..<score.count/m {
//        arr.append(Array(score[i*m...i*m+m-1]))
//    }
//    
//    let result = arr.map{ $0.min()! * m }.reduce(0, +)
//
//    return result
//}
//solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2])

// 소수 찾기
//func solution(_ n:Int) -> Int {
//    if n < 2 {return 0}
//    if n == 2 {return 1}
//    if n == 3 {return 2}
//    
//    var isPrime: [Bool] = Array(repeating: true, count: n+1)
//    isPrime[0] = false
//    isPrime[1] = false
//    
//    for i in 2...Int(Double(n).squareRoot()) {
//        if isPrime[i] {
//            for multiple in stride(from: i*i, through: n, by: i) {
//                isPrime[multiple] = false
//            }
//        }
//    }
//    
//    return isPrime.filter{ $0 }.count
//}
//
//solution(3)

// 덧칠하기 (미해결)
//func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
//    // 최소 1번, 최대 n번이라고 가정하고
//    // 중간값을 찾아가면서 그 중간값 횟수로 해당 벽을 모두 덧칠할수 있는지 확인
//    // (불가능 -> 횟수증가) (가능 -> 횟수감소)
//    
//    // 전체 벽 배열을 bool 원소로 n+1크기로 만든다.
//    // 벽에 색을 칠하는 로직을 생각해보자.
//    var wall: [Bool] = Array(repeating: true, count: n+1)
//    for i in section {
//        wall[i] = false
//    }
//    
//    let left = wall.firstIndex(of: false)!  // 가장 왼쪽에 안칠해져 있는 벽
//    let right = wall.lastIndex(of: false)!  // 가장 오른쪽에 안칠해져 있는 벽
//    
//    var allClear: Bool = false
//    var count = 1
//    
//    while !allClear {
//        for i in 0..<count {
//            // 가장 왼쪽 빈벽에 롤러를 맞추고 색칠하면 가장 오른쪽까지 칠해지는가?
//            
//        }
//        count += 1
//        // false가 없으면 올클리어 -> true, 반복문 탈출
//        if !wall.contains(false) { allClear.toggle() }
//    }
//    
////    wall[0] = true
////    var (min, max) = (1, n)
//    
////    while min <= max {
////        var mid = (min + min)/2
////        var count = 0
////        
////
////
////        
////        // 모든벽이 true일때
////        if !wall.contains(false) {
////            max = mid - 1
////        } else {    // 하나라도 안칠해진 벽이 있을때
////            min = mid + 1
////        }
////    }
//    
//    return 0
//}

// 실패율
//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    var stageCount = Array(repeating: 0, count: N + 1)
//        var players = stages.count
//
//        // 각 스테이지에 도달한 사람 수 계산
//        for stage in stages {
//            if stage <= N {
//                stageCount[stage] += 1
//            }
//        }
//
//        var result = [(stage: Int, failRate: Double)]()
//
//        // 실패율 계산
//        for i in 1...N {
//            let failRate = Double(stageCount[i]) / Double(players)
//            players -= stageCount[i]
//            result.append((i, failRate))
//        }
//
//        // 실패율을 기준으로 정렬
//        result.sort {
//            if $0.failRate == $1.failRate {
//                return $0.stage < $1.stage
//            }
//            return $0.failRate > $1.failRate
//        }
//
//        // 결과 추출
//        return result.map { $0.stage }
//}
//let sol = solution( 5, [1, 1, 1, 2, 3, 4])

// 옹알이(2)
//func solution(_ babbling:[String]) -> Int {
//    let words = ["aya", "ye", "woo", "ma"]
//    var babbling = babbling
//    var count = 0
//    var temp: Character = " "
//    var canSpeak: Bool = true
//    var sol = ""
//    
//    for i in 0..<4 {
//        babbling = babbling.map{ $0.replacingOccurrences(of: words[i], with: "\(i)") }
//    }
//    babbling = babbling.filter{ Int($0) != nil }
//    
//    for word in babbling {
//        canSpeak = true
//        for char in word {
//            if char == temp {
//                canSpeak = false
//            }
//            
//            temp = char
//        }
//        if canSpeak {
//            count += 1
//        }
//        temp = " "
//    }
//
//    return count
//}
//solution(["aya", "yee", "u", "maa"])

// [1차] 다트 게임
//func solution(_ dartResult:String) -> Int {
//    var dartResult = dartResult
//    var tempScore = 0
//    var tempScore2 = 0
//    var score: [Int] = []
//    var dartArr = dartResult.map{ String($0) }
//    
//    for i in dartArr {
//        switch i {
//        case "S","D","T":
//            // S -> 1제곱, D -> 2제곱, T -> 3제곱
//            tempScore = score.removeLast()
//            
//            if i == "D" {
//                tempScore *= tempScore
//            } else if i == "T" {
//                tempScore *= (tempScore * tempScore)
//            }
//            
//            score.append(tempScore)
//            tempScore = 0
//            
//        case "1"..."9":
//            tempScore += Int(i)!
//            score.append(tempScore)
//            
//        case "0":
//            if tempScore == 1 { // 직전의 문자가 1이고 직후 0이 오면 점수가 10인 경우
//                score.removeLast()
//                tempScore = 10
//            }
//            
//            score.append(tempScore)
//            
//        case "*":
//            tempScore = (score.removeLast()) * 2
//            if score.count > 0 {
//                tempScore2 = (score.removeLast()) * 2
//                score.append(tempScore2)
//            }
//            score.append(tempScore)
//            
//            (tempScore, tempScore2) = (0, 0)
//        case "#":
//            tempScore = score.removeLast()
//            tempScore *= -1
//            score.append(tempScore)
//            tempScore = 0
//            
//        default:
//            print("default")
//        }
//    }
//    return score.reduce(0, +)
//}
//solution("1S*2T*3S")

// 문자열 나누기
//func solution(_ s:String) -> Int {
//    // 왼쪽부터 오른쪽으로 첫문자와 같은문자,다른문자 갯수가 다르면 문자열 분리 후 갯수 초기화후 다시진행.
//    var firstChar = s.first!
//    var sameCount = 0
//    var diffCount = 0
//    var str = s
//    var resultString = str.map{
//        if sameCount == diffCount, sameCount == 0 {
//            firstChar = $0
//        }
//        if $0 == firstChar {
//            print("same Char")
//            sameCount += 1
//        } else {
//            print("diff Char")
//            diffCount += 1
//        }
//        
//        if sameCount == diffCount, sameCount > 0 {
//            print("let seperate!")
//            (sameCount, diffCount) = (0, 0)
//            return "\($0) "
//        }
//        
//        return "\($0)"
//    }
//    print("result: \(resultString.joined().split(separator: " "))")
//    return resultString.joined().split(separator: " ").count
//}
//solution("abcdefghijk")

// 바탕화면 정리
//func solution(_ wallpaper:[String]) -> [Int] {
//    var (left, right) = (50, 0)
//    var (top, bottom) = (50, 0)
//    var locations: [(Int,Int)] = []
//    
//    for (indexY, loc) in wallpaper.enumerated() {
//        for (indexX, i) in loc.enumerated() {
//            if i == "#" {
//                locations.append((indexY, indexX))
//            }
//        }
//    }
//    
//    for i in locations {
//        if left > i.1 {
//            left = i.1
//        }
//        
//        if right < i.1 {
//            right = i.1
//        }
//        
//        if top > i.0 {
//            top = i.0
//        }
//        
//        if bottom < i.0 {
//            bottom = i.0
//        }
//    }
//    
//    return [top, left, bottom+1, right+1]
//}
//solution(["..", "#."])

// 약수의 개수와 덧셈
func solution(_ left:Int, _ right:Int) -> Int {
    var sol = (left...right).map{
        if countOfYaksu($0) % 2 == 0 {
            return $0
        } else {
            return $0 * -1
        }
    }
    
    return sol.reduce(0, +)
}

func countOfYaksu(_ n: Int) -> Int{
    var count = 0
    var i = 1
    while i*i <= n {
        if n % i == 0{
            if i * i == n {
                count += 1
                
            } else {
                count += 2
            }
        }
        i += 1
    }
    return count
}

solution(13, 17)
