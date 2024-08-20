//
//  main.swift
//  1weeks
//
//  Created by 김정원 on 7/17/24.
//

import Foundation

//let input = Int(readLine()!)!
//let str = readLine()!.split(separator: "*")// ["a", "d"]
//
//var re = ""
//for _ in 1...input {
//    var check = false
//    let com = readLine()! // abcd
//    if str[0].count + str[1].count > com.count {
//        print("NE")
//        continue
//    }
//    if com.prefix(str[0].count) == str[0] {
//        if com.suffix(str[1].count) == str[1] {
//            print("DA")
//            continue
//        }
//    }
//    print("NE")
//}
//짝지어 제거하기
//func solution(_ s:String) -> Int{
//    
//    var st:[Character] = []
//     
//    for i in s {
//        if st.last == i {
//            st.popLast()
//        } else {
//            st.append(i)
//        }
//
//    }
//     
//    return st.isEmpty ? 0 : 1
//}
//solution("baabaa")

//func solution(_ brown:Int, _ yellow:Int) -> [Int] {
//    let sqrtN = Int(sqrt(Double(yellow)))
//    var arr: [(Int,Int)] = []
//    for i in 1...sqrtN {
//        if yellow.isMultiple(of: i) {
//            arr.append((i, yellow / i)) // 약수 넣음
//        }
//    }
//    for i in arr {
//        if (i.0 + 2) * (i.1 + 2) == brown + yellow {
//            return [i.1 + 2, i.0 + 2]
//        }
//    }
//    return []
//}
//print(solution(10, 2))

// 점프와 순간이동
//import Foundation
//
//func solution(_ n:Int) -> Int
//{
//    var ans = 1
//    var n = n
//    while n > 1 {
//        if !n.isMultiple(of: 2) {
//            ans += 1
//        }
//        n /= 2
//    }
//    
//    return ans
//}
//print(solution(5000))

// 멀리 뛰기
//func solution(_ n:Int) -> Int {
//    var dp = Array(repeating: 0, count: n + 1)
//    dp[1] = 1
//    dp[2] = 2
//    if n > 2 {
//    for i in 3...n {
//        dp[i] = (dp[i - 1] + dp[i - 2]) % 1234567
//    }
//    }
//    return dp[n]
//}
//print(solution(1))

// 영어 끝말잇기

//func solution(_ n:Int, _ words:[String]) -> [Int] {
//    var w:[String] = []
//    var a = 0
//    var cycle = 0
//    var num = 0
//    var pre = "\(words[0].first!)"
//    for (index,element) in words.enumerated() {
//       
//        if w.contains(element) || pre.last != element.first {
//            a = index + 1
//            if a % n == 0 { // a = 9 일때는  3 3.
//                num = n
//                cycle = a / n
//                
//            } else { // a 가 10 일때는 1 4
//                cycle = (a / n) + 1
//                num = a % n
//            }
//            return [num, cycle]
//        }
//       
//        w.append(element)
//        pre = element
//    }
//    return [0,0]
//}
//print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))

// 예상 대진표
//
//func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
//{
//    var answer = 0
//    var (left,right) = (min(a,b),max(a,b))
//    if right - left == 1 && right / 2 > left / 2{
//        return 1
//    }
//    while left < right {
//        left = left % 2 == 0 ? left / 2 : (left / 2) + 1
//        right = right % 2 == 0 ? right / 2 : (right / 2) + 1
//        answer += 1
//    }
//    
//    return answer
//}
//print(solution(8, 7, 8))

// 귤 고르기
//func solution(_ k:Int, _ tangerine:[Int]) -> Int {
//    var dict = [Int: Int]()
//    for i in tangerine {
//        dict[i, default: 0] += 1
//    }
//    var arr = dict.values.sorted(by: >)
//    var k = k
//    
//    for (index,element) in arr.enumerated() {
//        k -= element
//        if k <= 0 {
//            return index + 1
//        }
//    }
//    
//    return 0
//}

// 옹알이 1
// aya ye woo ma 한번씩만 사용 가능

//func findStr(_ str: String, ba: [String]) -> Bool  {
//    
//    var ba = ba
//    var str = str
//    if str.isEmpty {
//        return true
//    }
//    if ba.isEmpty {
//        return false
//    }
//    for (index,element) in ba.enumerated() {
//        if str.hasPrefix(element) {
//            str.removeFirst(element.count)
//            ba.remove(at: index)
//            return findStr(str, ba: ba)
//        }
//    }
//    return false
//}
//
//
//func solution(_ babbling:[String]) -> Int {
//    var ans = 0
//    for i in babbling {
//        if findStr(i, ba: ["aya", "ye", "woo", "ma"]) {
//            ans += 1
//        }
//    }
//    
//    return ans
//}
//print(solution(["aya", "yee", "u", "maa", "wyeoo"]))

// 안전지대

//func solution(_ board:[[Int]]) -> Int {
//    var board = board
//    var ans = 0
//    for (first, element) in board.enumerated() {
//        for (second, element2) in element.enumerated() {
//            // first 와 second index 모두 받아옴
//            if element2 == 1 {
//                
//                for i in -1...1 {
//                    for j in -1...1 {
//                        if first + i < 0 || second + j >= element.count || first + i >= element.count || second + j < 0{
//                            continue
//                        }
//                        board[first + i][second + j] = 2
//                    }
//                }
//            }
//        }
//    }
//    for i in board {
//        for j in i {
//            if j == 0 {
//                ans += 1
//            }
//        }
//    }
//    return ans
//}
//print(solution([[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]]))

//func solution(_ n:Int) -> [[Int]] {
//    
//    // 00 01 02 03 13 23 33 32 31 30 20 10 11 12 22 21
//    var num = 0
//    var (row,column) = (0,-1)
//    var startIndex = 1
//
//    var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n) // n * n 의 배열 생성
//    while num < n * n {
//      
//        if startIndex > n { break}
//        for i in startIndex...n {
//            num += 1
//            column += 1
//            arr[row][column] = num
//        }
//        startIndex += 1
//        if startIndex > n { break}
//        for i in startIndex...n {
//            row += 1
//            num += 1
//            arr[row][column] = num
//        }
//        if startIndex > n { break}
//        for i in startIndex...n {
//            column -= 1
//            num += 1
//            arr[row][column] = num
//        }
//        startIndex += 1
//        if startIndex > n { break}
//        for i in startIndex...n {
//            row -= 1
//            num += 1
//            arr[row][column] = num
//        }
//    }
//    
//    return arr
//}
//print(solution(5))
// 평행
// 기울기 문제
//func solution(_ dots:[[Int]]) -> Int {
//    var (x1,x2,x3,x4,y1,y2,y3,y4,s1,s2) = (0,0,0,0,0,0,0,0,0.0,0.0)
//  
//    // 1 , 2  3 4
//    (x1,x2,y1,y2) = (dots[0][0],dots[1][0],dots[0][1],dots[1][1])
//    (y2,y1) = (max(y2,y1), min(y2,y1))
//    (x2,x1) = (max(x2,x1), min(x2,x1))
//    s1 = (Double(y2 - y1) / Double(x2 - x1))
//    
//    (x3,x4,y3,y4) = (dots[2][0],dots[3][0],dots[2][1],dots[3][1])
//    (y4,y3) = (max(y4,y3), min(y4,y3))
//    (x4,x3) = (max(x4,x3), min(x4,x3))
//   
//    if Double(x4 - x3) != 0 {
//        s2 = Double(y4 - y3) / (Double(x4 - x3))
//    }
//    
//    if s1 == s2 {
//        return 1
//    }
//
//    // 13 / 24
//    (x1,x2,y1,y2) = (dots[0][0],dots[2][0],dots[0][1],dots[2][1])
//    (y2,y1) = (max(y2,y1), min(y2,y1))
//    (x2,x1) = (max(x2,x1), min(x2,x1))
//    s1 = (Double(y2 - y1) / Double(x2 - x1))
//    
//    (x3,x4,y3,y4) = (dots[1][0],dots[3][0],dots[1][1],dots[3][1])
//    (y4,y3) = (max(y4,y3), min(y4,y3))
//    (x4,x3) = (max(x4,x3), min(x4,x3))
//   
//    if Double(x4 - x3) != 0 {
//        s2 = Double(y4 - y3) / (Double(x4 - x3))
//    }
//    
//    if s1 == s2 {
//        return 1
//    }
//    // 14 23
//    (x1,x2,y1,y2) = (dots[0][0],dots[3][0],dots[0][1],dots[3][1])
//    (y2,y1) = (max(y2,y1), min(y2,y1))
//    (x2,x1) = (max(x2,x1), min(x2,x1))
//    s1 = (Double(y2 - y1) / Double(x2 - x1))
//    
//    (x3,x4,y3,y4) = (dots[1][0],dots[2][0],dots[1][1],dots[2][1])
//    (y4,y3) = (max(y4,y3), min(y4,y3))
//    (x4,x3) = (max(x4,x3), min(x4,x3))
//   
//    if Double(x4 - x3) != 0 {
//        s2 = Double(y4 - y3) / (Double(x4 - x3))
//    }
//    
//    if s1 == s2 {
//        return 1
//    }
//    
//    return 0
//}
// 1,2   3,4
// 1,3   2,4
// 1,4.  2,3
//
// 겹치는 선분의 길이
//func solution(_ lines:[[Int]]) -> Int {
//   
//    var arr = Array(repeating: 0, count: 201)
//    for i in lines {
//        for j in i[0]..<i[1] {
//            arr[j + 100] += 1
//        }
//    }
//    return arr.filter{ $0 > 1 }.count
//}
//
//print(solution([[0, 1], [2, 5], [3, 9]]))
//print(solution([[-1, 1], [1, 3], [3, 9]]))
//print(solution([[0, 5], [3, 9], [1, 10]]))

// 분수의 덧셈
//func gcd(_ n1 : Int, _ n2: Int ) -> Int {
//    if n2 == 0 {
//        return n1
//    }
//    return gcd(n2, n1 % n2)
//}
//func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
//    let demon = denom1 * denom2
//    let numer = ((numer1 * denom2) + (numer2 * denom1))
//    let (a,b) = (max(demon,numer), min(demon,numer))
//    let gcd = gcd(a,b)
//    
//    return [numer / gcd, demon / gcd]
//}

// 연속된 수의 합
//func solution(_ num:Int, _ total:Int) -> [Int] {
//    let sum = (1..<num).reduce(0,+)
//    let st = (total - sum) / num
//    
//    return (st..<(st + num)).map{$0}
//}
//print(solution(5, 5))

// 햄버거
//func solution(_ ingredient:[Int]) -> Int {
//    var hambuger: [Int] = []
//    for i in ingredient {
//        hambuger.append(i)
//        if hambuger.count > 4, hambuger[hambuger.count - 4] == 1, hambuger[hambuger.count - 3] == 2,hambuger[hambuger.count - 2] == 3,hambuger[hambuger.count - 1] == 1 {
//            hambuger.removeLast(4)
//            
//        }
//    }
//    return (ingredient.count - hambuger.count) / 4
//}
//print(solution([2, 1, 1, 2, 3, 1, 2, 3, 1]     ))
//func solution(_ numbers:[Int], _ hand:String) -> String {
//    var ans = ""
//    let keypad: [Int: (Int, Int)] = [
//            1: (0, 0), 2: (0, 1), 3: (0, 2),
//            4: (1, 0), 5: (1, 1), 6: (1, 2),
//            7: (2, 0), 8: (2, 1), 9: (2, 2),
//            0: (3, 1)
//        ]
//    
//    var last_left = (3,0)
//    var last_right = (3,2)
//    
//    for i in numbers {
//        let target = keypad[i]!
//        switch i {
//            case 1,4,7 :
//                ans.append("L")
//                last_left = target
//            case 3,6,9 :
//                ans.append("R")
//                last_right = target
//            default:
//            let leftDistance = abs(last_left.0 - target.0) + abs(last_left.1 - target.1)
//            let rightDistance = abs(last_right.0 - target.0) + abs(last_right.1 - target.1)
//            if leftDistance < rightDistance {
//                ans.append("L")
//                last_left = target
//            } else if rightDistance < leftDistance {
//                ans.append("R")
//                last_right = target
//            } else {
//                if hand == "left" {
//                    ans.append("L")
//                    last_left = target
//                } else {
//                    ans.append("R")
//                    last_right = target
//                }
//            }
//        }
//    }
//    
//    return ans
//}
//solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")

//func solution(_ s:String) -> Int {
//    let dict = ["]":"[", ")" : "(", "}" : "{"] // 짝을 이뤄줌
//    var re = 0
//    var s = s
//
//    for i in 1 ..< s.count {
//        var str = ""
//        for i in s {
//            if let last = str.last {
//                if "\(last)" == dict["\(i)"] ?? "2" {
//                    str.removeLast()
//                } else {
//                    str.append(i)
//                }
//            } else {
//                str.append(i)
//            }
//        
//        }
//        if str.isEmpty {
//            re += 1
//        }
//        s.append(s.removeFirst())
//    }
//    return re
//}
//
//solution("[](){}")

// 할인행사
//func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
//    let sum = number.reduce(0,+)
//    var dict = Dictionary(uniqueKeysWithValues: zip(want,number))
//    var re = 0
//        
//    for i in 0...(discount.count - sum) {
//        if i == 0 {
//            for j in 0..<sum {
//                dict[discount[j], default: 0] -= 1 // 처음일때 비교할 거에 빼놓는다.
//            } // discount 가장 첫번째에 있었던 것은 다시 더해주어야 하고 가장 마지막에 있는것은 빼주어야 한다.
//        } else {
//            dict[discount[i - 1], default: 0] += 1
//            dict[discount[i + sum - 1], default: 0] -= 1
//        }
//        
//        if Set(dict.values).filter({$0 > 0}).isEmpty {
//            re += 1
//        }
//    }
//    return re
//}
//print(solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"])
//)

// 행렬의 곱셈
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    let rowsA = arr1.count
//    let colsA = arr1[0].count
//    let rowsB = arr2.count
//    let colsB = arr2[0].count
//    
//    var result = Array(repeating: Array(repeating: 0, count: colsB), count: rowsA)
//    
//    for i in 0..<rowsA {
//        for j in 0..<colsB {
//            for k in 0..<colsA {
//                result[i][j] += arr1[i][k] * arr2[k][j]
//            }
//        }
//    }
//    return result
//}
//print(solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]))

// 의상
//func solution(_ clothes:[[String]]) -> Int {
//    var dict = [String: Int]()
//    
//    for i in clothes {
//        dict[i[1], default: 1] += 1
//    }
//    
//    return (dict.values.reduce(1,*) - 1)
//}
//    
//  N으로 표현
//func solution(_ N: Int, _ number: Int) -> Int {
//    if N == number {
//        return 1
//    }
//    
//    var dp = Array(repeating: Set<Int>(), count: 9)
//    
//    for i in 1...8 {
//        dp[i].insert(Int(String(repeating: String(N), count: i))!)
//    }
//    
//    for i in 1...8 {
//        for j in 1..<i {
//            for op1 in dp[j] {
//                for op2 in dp[i-j] {
//                    dp[i].insert(op1 + op2)
//                    dp[i].insert(op1 - op2)
//                    dp[i].insert(op1 * op2)
//                    if op2 != 0 {
//                        dp[i].insert(op1 / op2)
//                    }
//                }
//            }
//        }
//        if dp[i].contains(number) {
//            return i
//        }
//    }
//    
//    return -1
//}
//print(solution(5, 12))
//print(solution(2, 11))
// 캐시
//func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
//    var str:[String] = []
//    var re = 0
//    for i in cities {
//        let city = i.lowercased()
//        if let index = str.firstIndex(of: city) { // 제거할게 있다면
//            str.append(str.remove(at: index).lowercased())
//            re += 1
//            continue
//        }
//        
//        if str.count == cacheSize && cacheSize > 0  {
//            str.removeFirst()
//        }
//        if cacheSize > 0 {
//            str.append(city)
//        }
//        re += 5
//
//    }
//    
//    return re
//}

//import Foundation
//
//func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
//    var cacheStore: [String: Int] = [:]  // 도시 이름과 최근 사용 시간을 저장하는 딕셔너리
//    var runTime = 0
//    var currentTime = 0
//
//    for city in cities {
//        let cityLower = city.lowercased()
//
//        if let _ = cacheStore[cityLower] {
//            // 캐시 히트
//            runTime += 1
//        } else {
//            // 캐시 미스
//            runTime += 5
//            if cacheStore.count >= cacheSize && cacheSize > 0 {
//                // 캐시가 가득 찼다면 LRU 항목 제거
//                let lru = cacheStore.min(by: { $0.value < $1.value })!
//                cacheStore.removeValue(forKey: lru.key)
//            }
//        }
//
//        if cacheSize > 0 {
//            // 캐시에 항목 추가 또는 업데이트
//            cacheStore[cityLower] = currentTime
//        }
//
//        currentTime += 1
//    }
//
//    return runTime
//}
//solution(3, ["Jeju", "jeju", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"])
//
 //기능개발
//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var an:[Int] = []
//    var re:[Int] = []
//    var cnt = 1
//    for (i,j) in zip(progresses,speeds) {
//        var num = (100 - i) % j
//        if num != 0 {
//            num = (100 - i) / j + 1
//        } else {
//            num = (100 - i) / j
//        }
//        if let first = an.first {
//            if first >= num {
//                an.append(num)
//            } else {
//                re.append(an.count)
//                an.removeAll()
//                an.append(num)
//            }
//        } else {
//            an.append(num)
//        }
//    }
//    if !an.isEmpty {
//        re.append(an.count)
//    }
//    return re
//}


// 튜플
//import Foundation
//
//func solution(_ s:String) -> [Int] {
//    var st = Array(s)
//    st.removeFirst()
//    st.removeLast()
//    var num = ""
//    var re: [Int] = []
//    var ans:[Int: [Int]] = [:]
//    var currentIndex = 0
//    var result:[Int] = []
//    while currentIndex < st.count {
//        if st[currentIndex] == "{" {
//            currentIndex += 1
//            while true {
//                if st[currentIndex] == "}" {
//                    if re.isEmpty {
//                        re.append(Int(num)!)
//                    }
//                    if let last = re.last {
//                        if "\(last)" != num {
//                            re.append(Int(num)!)
//                        }
//                    }
//                    ans[re.count, default : []] = re
//                    re.removeAll()
//                    num = ""
//                    currentIndex += 1
//                    break
//                } else if st[currentIndex] == "," && !num.isEmpty{
//                    re.append(Int(num)!)
//                    num = ""
//                } else if let number = Int("\(st[currentIndex])"){
//                    num.append("\(number)")
//                }
//                currentIndex += 1
//            }
//        } else {
//            currentIndex += 1
//        }
//    }
//    for i in 1...ans.count {
//        var se = Set(ans[i, default: []]) // set 으로 바꿈
//        var com = se.subtracting(result)
//        result.append(Array(com)[0])
//        
//    }
//    return result
//}
//
//solution("{{4,2,3},{3},{2,3,4,1},{2,3}}")

// 피로도

//func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
//    var max_num = -1
//    for (i_index, i_element) in dungeons.enumerated() { // i_index 부분 없앤다.
//        var j = dungeons
//        j.remove(at: i_index)
//        var st = k
//        var cnt = 0
//        if st - i_element[0] < 0 {
//            break
//        } else {
//            cnt += 1
//            st -= i_element[1]
//        }
//        for _ in 0..<j.count{
//            var st2 = st
//            var cnt2 = cnt
//            for (j_index, j_element) in j.enumerated() {
//                if st2 - j_element[0] < 0 {
//                    break
//                } else {
//                    cnt2 += 1
//                    st2 -= j_element[1]
//                }
//            }
//            max_num = max(max_num, cnt2)
//            j.append(j.removeFirst())
//        }
//    }
//    return max_num
//}
//print(solution(80, [[80,20],[50,40],[30,10]]))


//func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
//    var maxDugeons = 0
//    var visited = Array(repeating: false , count: dungeons.count)
//    func backtrack(_ currentFatigue: Int, _ count: Int) {
//        for i in 0..<dungeons.count {
//            let minFatigue = dungeons[i][0]
//            let consumeFatigue = dungeons[i][1]
//            
//            if !visited[i] && currentFatigue >= minFatigue {
//                visited[i] = true
//                backtrack(currentFatigue - consumeFatigue, count + 1)
//                visited[i] = false
//            }
//            
//        }
//    }
//    backtrack(k, 0)
//    return maxDugeons
//}

struct Stack<T> {
    private var elements: [T] = []

    mutating func push(_ element: T) {
        elements.append(element)
    }

    mutating func pop() -> T? {
        return elements.popLast()
    }

    func size() -> Int {
        return elements.count
    }

    func isEmpty() -> Bool {
        return elements.isEmpty
    }

    func top() -> T? {
        return elements.last
    }
}

//let n = Int(readLine()!)!  // 명령의 수
//var stack = Stack<Int>()
//
//for _ in 0..<n {
//    let command = readLine()!.split(separator: " ")
//    
//    switch command[0] {
//    case "push":
//        let value = Int(command[1])!
//        stack.push(value)
//        
//    case "pop":
//        if let poppedValue = stack.pop() {
//            print(poppedValue)
//        } else {
//            print(-1)
//        }
//        
//    case "size":
//        print(stack.size())
//        
//    case "empty":
//        print(stack.isEmpty() ? 1 : 0)
//        
//    case "top":
//        if let topValue = stack.top() {
//            print(topValue)
//        } else {
//            print(-1)
//        }
//        
//    default:
//        break
//    }
//}

struct Queue<T> {
    private var elements: [T] = []

    // 큐에 요소를 추가하는 메서드 (Enqueue)
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }

    // 큐에서 요소를 제거하고 반환하는 메서드 (Dequeue)
    mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }

    // 큐의 첫 번째 요소를 반환하는 메서드 (Peek)
    func peek() -> T? {
        return elements.first
    }
    
    func back() -> T? {
        return elements.last
    }
    
    // 큐가 비어있는지 확인하는 메서드
    func isEmpty() -> Bool {
        return elements.isEmpty
    }

    // 큐의 요소 개수를 반환하는 메서드
    func count() -> Int {
        return elements.count
    }
}
//
//let n = Int(readLine()!)!
//
//var queue = Queue<Int>()
//
//for _ in 0..<n {
//    let command = readLine()!.split(separator: " ")
//    switch command[0] {
//        case "push":
//            let value = Int(command[1])!
//            queue.enqueue(value)
//    
//        case "pop":
//            if let poppedValue = queue.dequeue() {
//                print(poppedValue)
//            } else {
//                print(-1)
//            }
//    
//        case "size":
//        print(queue.count())
//    
//        case "empty":
//            print(queue.isEmpty() ? 1 : 0)
//    
//        case "front":
//            if let topValue = queue.peek() {
//                print(topValue)
//            } else {
//                print(-1)
//            }
//        case "back":
//            if let bottomValue = queue.back() {
//                print(bottomValue)
//            } else {
//                print(-1)
//            }
//    
//        default:
//            break
//        }
//}

while true {
    var str = readLine()! // So when I die (the [first] I will see in (heaven) is a score list).

    
    if str == "." {
        break
    }
    
    var stack: [Character] = []
    var isBalanced = true
    
    for char in str {
        if char == "(" || char == "[" {
            stack.append(char) // ( [
        } else if char == ")" {
            if stack.isEmpty || stack.last != "(" {
                isBalanced = false
                break
            } else { //
                stack.removeLast()
            }
        } else if char == "]" { //
            if stack.isEmpty || stack.last != "[" {
                isBalanced = false
                break
            } else {
                stack.removeLast() // ( (
            }
        }
    }
    // 스택에 쌓인 괄호가 없어야 균형잡힌거다 ((([[[[[[
    if isBalanced && stack.isEmpty {
        print("yes")
    } else {
        print("no")
    }
}

