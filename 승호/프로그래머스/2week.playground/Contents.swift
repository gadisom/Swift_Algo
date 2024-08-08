import UIKit

// 예산 (lv.1)
//func solution(_ d:[Int], _ budget:Int) -> Int {
//    var d = d.sorted(by: <)
//    var answer = 0
//    
//    var budget = budget
//    
//    for i in d {
//        budget -= i
//        if budget < 0 {
//            break
//        }
//        answer += 1
//    }
//        
//    return answer
//}

// 3진법 뒤집기
//func solution(_ n:Int) -> Int {
//    var samZin = String(n, radix: 3)
//    var reversedSamZin = samZin.reversed().map{String($0)}
//    var sipZin = Int(reversedSamZin.joined(), radix: 3)!
//    
//    return sipZin
//}

// 크기가 작은 부분문자열
//func solution(_ t:String, _ p:String) -> Int {
//    let pCount = p.count
//    let stringCount = t.count - pCount
//    var tString = Array(t)
//    var strings: [String] = []
//
//    for i in 0...stringCount {
//        strings.append(String(tString[i...(i + pCount - 1)]))
//    }
//    
//    return strings.filter{ Int($0)! <= Int(p)! }.count
//}

// 이상한 문자 만들기
//func solution(_ s:String) -> String {
//    /// 1. 문자열 공백기준으로 분리하기
//    /// 2. 각 단어의 짝수번째 대문자, 홀수번째 소문자로 변경
//    /// 3. 각 단어 공백문자를 두고 붙이기
//    var strings = s.components(separatedBy: " ")
//    var result: [String] = []
//    
//    for string in strings {
//        var index = 0
//        var tmp = ""
//        for i in string {
//            if index%2 == 0 {
//                tmp.append(i.uppercased())
//            } else {
//                tmp.append(i.lowercased())
//            }
//            index += 1
//        }
//        result.append(tmp)
//    }
//    var result2 = s.components(separatedBy: " ").map{ $0.enumerated().map{ $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() }.joined() }.joined(separator: " ") // 한줄로 표현하기
//    
//    return result.joined(separator: " ")
//}
//solution("try hello world")

// 삼총사
//func solution(_ number:[Int]) -> Int {
//    var count = 0
//    for i in 0..<number.count-2 {
//        for j in i+1..<number.count-1 {
//            for k in j+1..<number.count {
//                if number[i]+number[j]+number[k] == 0 {
//                    count += 1
//                }
//            }
//        }
//    }
//    return count
//}
//solution([-3, -2, -1, 0, 1, 2, 3])

// 최소직사각형
//func solution(_ sizes:[[Int]]) -> Int {
//    var maxW = 0, maxH = 0
//    var sizes = sizes
//    // 모든 명함들을 가로로 눕히거나 세로로 세워서 그때의 최대최소를 구한다면?
//    
//    for (index, i) in sizes.enumerated() {
//        if i[0] < i[1] {
//            sizes[index] = (i.reversed())
//        }
//    }
//    
//    for i in sizes {
//        if i[0] >= maxW {
//            maxW = i[0]
//        }
//        
//        if i[1] >= maxH {
//            maxH = i[1]
//        }
//    }
//    return maxW * maxH
//}
//solution([[60, 50], [30, 70], [60, 30], [80, 40]])

// 시저 암호
//func solution(_ s:String, _ n:Int) -> String {
//    var result = ""
//    for char in s {
//        switch char {
//        case "a"..."z":
//            let start = Int(UnicodeScalar("a").value)
//            let uni = Int(UnicodeScalar(String(char))!.value)
//            result += String(UnicodeScalar((uni + n - start) % 26 + start)!)
//        case "A"..."Z":
//            let start = Int(UnicodeScalar("A").value)
//            let uni = Int(UnicodeScalar(String(char))!.value)
//            result += String(UnicodeScalar((uni + n - start) % 26 + start)!)
//        default:
//            result += String(char)
//        }
//    }
//
//    return result
//}
//solution("z A Z", 1)

// 가장 가까운 같은 글자
//func solution(_ s:String) -> [Int] {
//    var reversed:[String] = []
//    var result:[Int] = []
//    var s = s
//    for char in s {
//        if reversed.contains(String(char)) {
//            let index = reversed.firstIndex(of: String(char))! + 1
//            reversed.insert(String(char), at: 0)
//            result.append(index)
//        } else {
//            reversed.insert(String(char), at: 0)
//            result.append(-1)
//        }
//    }
//
//    return result
//}
//solution("banana")

// K번째수
//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    var result: [Int] = commands.map{
//        let arr = array[$0[0]-1...$0[1]-1].sorted()
//        return arr[$0[2]-1]
//    }
//    return result
//}
//solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

// 푸드 파이트 대회
//func solution(_ food:[Int]) -> String {
//    var resultArr:[String] = ["0"]
//    var foodDic = Dictionary(uniqueKeysWithValues: zip(food.indices, food))
//    // key: food배열의 인덱스, value: 해당 인덱스에 위치한 값
//    print(foodDic)
//    for i in foodDic.keys.sorted(by:>) {
//        if foodDic[i]!/2 > 0 {
//            var str = Array(repeating: String(i), count: foodDic[i]!/2).joined()
//            resultArr.insert(str, at: 0)
//            resultArr.append(str)
//        }
//    }
//    
//    return resultArr.joined()
//}
//solution([1, 3, 4, 6])

// 문자열 내 마음대로 정렬하기
//func solution(_ strings:[String], _ n:Int) -> [String] {
//    return strings.sorted(by: {
//        if Array($0)[n] != Array($1)[n] {
//            return Array($0)[n...].map{String($0)}.joined() < Array($1)[n...].map{String($0)}.joined()
//        } else {
//            return $0 < $1
//        }
//    })
//}
//solution(["edc", "abc"], 2)

// 콜라 문제
//func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
//    // a: 콜라를 받기위해 마트에 줘야되는 병 수
//    // b: 빈병 a개를 주면 받는 콜라의 수
//    // c: 내가 현재 갖고있는 빈병의 수
//    
//    func colla(empty: Int) -> Int {
//        var totalColla = 0
//        var temp = 0
//        
//        if a > empty {
//            return 0
//        } else {
//            var count = empty / a   // 마트에 몇번 교환 가능횟수
//            var collaCount = count * b  // 현재 갖고있는 빈병으로 받을수 있는 콜라 수
//            temp = 0    // 교환하지 못하고 남은 빈병 수
//            totalColla += collaCount
//            temp += empty - count * a
//            
//            totalColla += colla(empty: collaCount + temp)
//        }
//        return totalColla
//    }
//    
//    return colla(empty: n)
//}
//solution(2, 1, 1000000)

// 명예의 전당 (1) (해결x)
//func solution(_ k:Int, _ score:[Int]) -> [Int] {
//    var jundang: [Int] = []
//    var results: [Int] = []
//  
////    for i in score {
////        jundang.append(i)
////        if jundang.count > k {
////            jundang.remove(at: jundang.index(before: jundang.min()!))
////        }
////    }
//    
//    for i in score {
//        if jundang.count < k {
//            jundang.insert(i, at: 0)
//        } else {
//            if jundang.min()! <= i {
////                jundang.sort()
////                jundang.removeFirst()
//                let minIndex = jundang.index(before: jundang.min()!)
//                jundang.remove(at: minIndex)
//                jundang.append(i)
//            }
//        }
//        results.append(jundang.min()!)
//    }
//    return results
//}
//solution(4, [0, 300, 40, 300, 20, 70, 150, 50, 500, 1000])

// 추억 점수
//func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
//    var dic = Dictionary(uniqueKeysWithValues: zip(name, yearning))
//        
//    return photo.map{ $0.filter{ dic.keys.contains($0) }.map{ dic[$0]! }.reduce(0, +) }
//}
//solution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["aaa", "vvv", "ddd", "eee"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]])

// 카드 뭉치  (해결x)
//func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
//    var isSame1 = false
//    var isSame2 = false
//    let cards = [cards1,cards2]
//    
//    if cards1 == goal || cards2 == goal {
//        return "Yes"
//    }
//    
//    for i in cards {
//        var goal = goal
//        
//        for card in i {
//            if goal.contains(card) {
//                goal.remove(at: goal.firstIndex(of: card)!)
//            }
//        }
//        print(goal)
//        
////        if goal == cards1  {
////            isSame1 = true
////        }
////        if goal == cards2 {
////            isSame2 = true
////        }
//        
////        for j in 0..<goal.count {
////            isSame1 = i[j] == goal[j]
////        }
//        print("goal:",goal[0...],"\ncard",cards[0][0..<goal.count],cards[1][0..<goal.count])
//        if goal[0...] == cards[0][0..<goal.count] || goal[0...] == cards[1][0..<goal.count] {
//            isSame1 = true
//        } else {
//            isSame1 = false
//        }
//        
//    }
//
//    return isSame1 ? "Yes" : "No"
//}
//solution(["i", "drink", "water"], ["want", "to"], ["i", "want", "to", "drink", "water"])

// 2016년
//func solution(_ a:Int, _ b:Int) -> String {
//    let weeks = ["THU","FRI","SAT","SUN","MON","TUE","WED",]
//    var months = [0,31,29,31,30,31,30,31,31,30,31,30,31]
//    var sumOfDate = 0
//    for i in 0..<a {
//        sumOfDate += months[i]
//    }
//    sumOfDate += b
//    print(sumOfDate)
//    print(weeks[sumOfDate % 7])
//    return weeks[sumOfDate % 7]
//}
//solution(1, 11)

// 모의고사
func solution(_ answers:[Int]) -> [Int] {
    let supo1 = [1,2,3,4,5] // 5
    let supo2 = [2,1,2,3,2,4,2,5]   // 8
    let supo3 = [3,3,1,1,2,2,4,4,5,5]   //10
    return []
}
