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
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = commands.map{
        let arr = array[$0[0]-1...$0[1]-1].sorted()
        return arr[$0[2]-1]
    }
    return result
}
solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
