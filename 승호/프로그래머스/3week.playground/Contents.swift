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
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    // 각 스테이지의 실패율을 담은 결과 배열
    var result = Array(repeating: 0.0, count: N)
    
    // 실패율 = 스테이지에 도달했으나 아직 클리어 하지 못한 수 / 스테이지에 도달한 수
    // -> 클리어x 수 = 스테이지보다 작거나 같은 스테이지에 있는 수
    // -> 클리어o 수 = 스테이지보다 큰 스테이지에 있는 수
    // -> 스테이지에 도달한 수 = 같은 스테이지 수 + 클리어o 수
    
    for i in 0..<result.count {
        let yetClear = Double(stages.filter{ $0 == i+1 }.count)
        let clear = Double(stages.filter{ $0 >= i+1 }.count)
        
        result[i] = yetClear/clear
    }
    
    var resultDict = Dictionary(uniqueKeysWithValues: zip((1...N), result))
    
    let sol = resultDict.sorted{
        if $0.value == $1.value {
            return $0.key < $1.key
        }
        
        return $0.value > $1.value
    }.map{
        $0.key
    }
    
    return sol
}
solution(2, [1, 1, 1, 1])
