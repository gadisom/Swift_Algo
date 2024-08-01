import Foundation
import UIKit
// 문자열 내 p와 y 의 개수
/*
 func solution(_ s:String) -> Bool {
 return s.filter {$0 == "p" || $0 == "P"}.count == s.filter {$0 == "y" || $0 == "Y"}.count ? true : false
 }
 */

// 자릿수 더하기

//func solution(_ n:Int) -> Int
//{
//    return String(n).reduce(0){ result, char in
//        return result + Int("\(char)")!
//    }
//}

// 자연수 뒤집어 배열로 만들기

//func solution(_ n: Int64) -> [Int] {
//    return String(n).reversed().map { Int(String($0))! }
//}

// 정수 내림차순으로 배치하기
//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(n).sorted(by: >).map {String($0)}.joined())!
//}
//print(solution(118372))

// 정수 제곱근 판별
//func solution(_ n:Int64) -> Int64 {
//    let t = Int64(sqrt(Double(n)))
//    return t * t == n ? (t+1)*(t+1) : -1
//}

// 평균구하기
//func solution(_ arr:[Int]) -> Double {
//    return Double(arr.reduce(0,+)) / Double(arr.count)
//}

// 하샤드 수 구하기

//func solution(_ x:Int) -> Bool {
//    return x % String(x).map{Int(String($0))!}.reduce(0,+) == 0 ? true : false
//}


// x 만큼 간격이 있는 n 개의 숫자
//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    return (1...n).map{Int64($0 * x)}
//}

// 두 정수 사이의 합
//func solution(_ a: Int, _ b: Int) -> Int {
//    return (a...b).reduce(0,+)
//}

// 나머지가 1이 되는 수 찾기
//func solution(_ n:Int) -> Int {
//    var num: Int = 0
//    for i in 1...n {
//        if n % i == 1 {
//            num = i
//            break
//        }
//    }
//    return num
//}
// 음양 더하기
//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//
//    return (0..<absolutes.count).map{ signs[$0] ? absolutes[$0] : absolutes[$0] * -1 }.reduce(0,+)
//}

//콜라츠 추측
//func solution(_ num:Int) -> Int {
//    var count = 0
//    var n = num
//    while(n != 1 && count < 500) {
//        n = n.isMultiple(of: 2) ? n / 2 : (n * 3) + 1
//        count += 1
//    }
//    return count == 500 ? -1 : count
//}
//print(solution(6))

// 없는 숫자 더하기
//func solution(_ numbers:[Int]) -> Int {
//    return Set(0...9).subtracting(Set(numbers)).reduce(0,+)
//}
// 나누어 떨어지는 숫자 배열
//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    return arr.filter{ $0 % divisor == 0}.count > 0 ? arr.filter {$0 % divisor == 0}.sorted() : [-1]
//}

// 핸드폰 번호 가리기

//func solution(_ phone_number:String) -> String {
//    let end = phone_number.index(phone_number.startIndex, offsetBy: 4)
//    return "\(String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4))"
//}

// 제일 작은 수 제거하기
//func solution(_ arr:[Int]) -> [Int] {
//    var a = Int.max
//    var b = 0
//    var re = arr
//    for (index,element) in arr.enumerated() {
//        if element < a {
//            a = element // 최소를 구하는 과정
//            b = index // 최소값이 담겨있는 index 저장
//        }
//    }
//    re.remove(at: b)
//    return re.count > 0 ? re : [-1]
//}
//print(solution([3,4,2,1]))


// 정답 배열 생성
//var correctNumbers: Set<Int> = []
//
//while correctNumbers.count < 6 {
//    correctNumbers.insert(Int.random(in: 1...45))
//}
//
//// 입력 배열 생성 (5개의 로또 번호 세트)
//var inputNumbers: [[Int]] = []
//
//for _ in 1...5 {
//    var numbers: Set<Int> = []
//    while numbers.count < 6 {
//        numbers.insert(Int.random(in: 1...45))
//    }
//    inputNumbers.append(Array(numbers))
//}
//
//// 당첨 여부 확인
//for (index, numbers) in inputNumbers.enumerated() {
//    let correctSet = correctNumbers.intersection(numbers)
//    switch correctSet.count {
//    case 6:
//        print("입력 \(index + 1): 1등! (맞춘 숫자: \(correctSet))")
//    case 5:
//        print("입력 \(index + 1): 3등! (맞춘 숫자: \(correctSet))")
//    case 4:
//        print("입력 \(index + 1): 4등! (맞춘 숫자: \(correctSet))")
//    case 3:
//        print("입력 \(index + 1): 5등! (맞춘 숫자: \(correctSet))")
//    default:
//        print("입력 \(index + 1): 꽝! (맞춘 숫자: \(correctSet))")
//    }
//}
//print("정답 번호: \(Array(correctNumbers).sorted())")

// 가운데 글자 가져오기
//
//func solution(_ s:String) -> String {
//    return s.count.isMultiple(of: 2) ?  String(Array(s)[(s.count/2)-1...(s.count/2)]) : String(Array(s)[s.count/2])
//}
// 수박
//func solution(_ n:Int) -> String {
//    return String((1...n).map{ $0.isMultiple(of: 2) ? "박" : "수" })
//}

// 내적
//
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    return zip(a,b).map{$0 * $1}.reduce(0,+)
//}

// 약수의 개수와 덧셈
//func solution(_ left:Int, _ right:Int) -> Int {
//    return (left...right).map{ num in
//        (1...num).filter{ num % $0 == 0}.count.isMultiple(of: 2) ? num : -num
//    }.reduce(0,+)
//}

// 부족한 금액 계산하기
// 내가 가지고 있는 금액
//func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
//    let re = Int64(money - (1...count).reduce(0) { (result, num) in
//        result + (num * price)})
//    return re > money ? re : 0
//
//}

// 문자열 다루기
// 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인하는 함수
// 길이가 4 or 6 인경우 체크 -> 숫자로만 되어있는지 체크
//func solution(_ s:String) -> Bool {
//    if s.count == 4 || s.count == 6 {
//        if let a = Int(s) {
//            return true
//        } else {
//            return false
//        }
//    } else {
//        return false
//    }
//}

// 행렬의 덧셈
// [[1],[2]]    [[3],[4]]    [[4],[6]]
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var re:[[Int]] = []
//    for (index,(num1,num2)) in zip(arr1, arr2).enumerated() {
//        var temp: [Int] = []
//        for (a,b) in zip(num1, num2) {
//            temp.append(a + b)
//        }
//        re.append(temp)
//    }
//    return re
//}

//예산
//
//import Foundation
//
//func solution(_ d:[Int], _ budget:Int) -> Int {
//    var budget = budget
//    return d.sorted().filter{
//        budget -= $0
//        return budget >= 0
//    }.count
//}
// 크기가 작은 부분문자열
//func solution(_ t:String, _ p:String) -> Int {
//    var str = Array(t)
//    var cnt = 0
//    for i in 0..<t.count - p.count {
//        var temp: String = ""
//        for j in i..<i+p.count {
//            temp.append(str[j])
//        }
//        if Int(temp)! <= Int(p)! {
//            cnt += 1
//        }
//    }
//    return cnt
//
//}

// 이상한 문자 만들기
//func solution(_ s:String) -> String {
//    var result:[String] = []
//    let a = s.components(separatedBy: " ") // ["try", "hello", "world"
//    for i in a {
//        var r = ""
//        for (index,element) in i.enumerated() {
//            r += index.isMultiple(of: 2) ? element.uppercased() : element.lowercased()
//        }
//        result.append(r)
//    }
//    return result.joined(separator: " ")
//}
//print(solution("try hello world "))

// 삼총사

//func solution(_ number:[Int]) -> Int {
//    var result = 0
//    for a in 0...number.count-3
//    {
//        for b in a+1...number.count-2
//        {
//            for c in b+1...number.count-1
//            {
//                result += number[a] + number[b] + number[c] == 0 ? 1 : 0
//            }
//        }
//    }
//
//    return result
//}

// 최소 직사각형
// 가로일때 가장 큰 수/ 세로일때 가장 큰 수
// 그냥 쓸 경우 / 뒤집을 경우 [w,h] [h,w]
/*
 60 50 -> 30 70
 60 70 / 70 50 -> 70 50
 하나씩 순회 하면서 뒤집을 경우 , 그대로 쓸 경우의 크기를 비교한다.
 */
//func solution(_ sizes:[[Int]]) -> Int {
//    var width = 0
//    var height = 0
//    for i in sizes {
//        width = max(i.max()!,width)
//        height = max(i.min()!,height)
//    }
//    return width * height
//}
// 시저암호
// 65~ 90 : a~z / 97~ 122 = A~Z
//func solution(_ s:String, _ n:Int) -> String {
//    return s.utf8.map {
//        var code = Int($0)
//        switch code {
//        case 65...90:
//            return (code + n - 65) % 26 + 65
//        case 97...122:
//            return (code + n - 97) % 26 + 97
//        default:
//            break
//        }
//    }
//
//}
// 가장 가까운 같은 글자
// 가장 최근에 있는 것의 위치를 파악해야함 remove ?
//func solution(_ s:String) -> [Int] {
//    var a:[Character] = []
//    var re:[Int] = []
//    for (i,element) in Array(s).enumerated() { // b
//        if let b = a.firstIndex(of: element) { // 있었으면
//            re.append(i - b)
//            a[b] = "0"
//        } else {
//            re.append(-1)
//        }
//        a.append(element)
//    }
//    return re
//}
//
//print(solution("foobar"))

// 숫자 문자열과 영단어
//func solution(_ s:String) -> Int {
//    let dic: [String: Int] = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9] // dic
//    var re = ""
//    var descr = ""
//    for i in s {
//        if let a = Int(String(i)) {
//            // 정수가 표현이 되면
//            re.append(String(a))
//        } else {
//            descr += String(i)
//            if let d = dic[descr] {
//                re.append(String(d))
//                descr = ""
//            }
//        }
//    }
//
//    return Int(re)!
//}
//print(solution("2three45sixseven"))

// 두 개 뽑아서 더하기
// 1 2 3 4 -> 2 1 3 4 1

//func solution(_ numbers:[Int]) -> [Int] {
//    var re:Set<Int> = []
//    for (index1,element1) in numbers.enumerated() {
//        for (index2,element2) in numbers.enumerated() {
//            if index1 != index2 {
//                re.insert(element1 + element2)
//            }
//        }
//    }
//    return Array(re).sorted()
//}

//func sizeConverter(_ cm: Double) -> (mm: Double, m: Double, km: Double, inch: Double, ft: Double) {
//    let mm = cm * 0.1
//    let m = cm * 0.01
//    let km = cm * 0.00001
//    let inch = cm * 0.393701
//    let ft = cm * 0.0328084
//    return (mm, m, km, inch, ft)
//    // tuple 2쌍일때만
//    // [Int]
//}
//
//let cmTuple = sizeConverter(1)
//
//print(cmTuple.mm)
//print(cmTuple.m)
//print(cmTuple.km)
//print(cmTuple.inch)
//print(cmTuple.ft)
//
// k 번째수
//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    return commands.map { arr in
//        let start = arr[0] - 1
//        let end = arr[1] - 1
//        let cnt = arr[2] - 1
//        return array[start...end].sorted()[cnt]
//    }.map{$0}
//}


//푸드 파이터 대회
//func solution(_ food:[Int]) -> String {
//    var result = ""
//    for (index,element) in food.enumerated() {
//        if index == 0 {
//            continue
//        }
//        result += String(repeating: "\(index + 1)", count: element / 2)
//    }
//    return result + "0" + result.reversed()
//}
//solution([1,3,4,6])


// 문자열 내맘대로 정렬하기
/*
 1. 문자열을 검사한다.
 2. n 번째 인덱스만 뽑아서 배열을 만든다. filter -> dic ??
 3.
 */
//func solution(_ strings:[String], _ n:Int) -> [String] {
//
//    return strings.sorted {
//        let index1 = $0.index($0.startIndex, offsetBy: n)
//        let index2 = $1.index($1.startIndex, offsetBy: n)
//
//        return $0[index1] == $1[index2] ? $0 < $1 : $0[index1] < $1[index2]
//
//    }
//}

//1차 비밀지도
// 배열들을 이진수로 바꾼다 ?
// 둘이 합친다
// 1은 #으로 바꾼다.
//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//    var answer: [String] = []
//     // 처음 두개를 만들어줌 00000
//    let str1 = String(repeating: "0", count: n)
//    let str2 = String(repeating: "0", count: n)
//    for (a,b) in zip(arr1, arr2) {
//
//
//        let c1 = String(a, radix: 2) // 1001
//        let c2 = String(b, radix: 2) // 11110
//        let d1 = Array(str1)[0..<n - c1.count] + c1 // 10001
//        let d2 = Array(str2)[0..<n - c2.count] + c2 // 11110
//        var re = ""
//        for (i,j) in zip(d1,d2) {
//            if i == "1" || j == "1" {
//                re += "#"
//            } else {
//                re += " "
//            }
//        }
//        answer.append(re)
//    }
//    return answer
//}

// 콜라문제
// a병에 b병을 주는데 n개가 있다.

// n개가 있다.
// n/a 만큼의 병을 받았다.
//// 남은건 n/a + n % a 개의 병이다. 3 1 20
//func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
//    var n = n
//    var sum = 0
//    while(n > 1) { // 20 8 4
//        sum += (n/a) * b // 6 2 1
//        n = (n/a) * b + n%a // 6 + 2 , 2 + 2 , 1 + 1
//    }
//    return sum
//}
// 추억점수
// name, yearing 를 통해 딕셔너리 생성
//func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
//    let point = zip(name,yearning).reduce(into: [String:Int]()) { (dict,pair) in
//        dict[pair.0] = pair.1
//    }
//    return photo.map { // ["may", "kein", "kain", "radi"]
//        $0.reduce(0){ result, str in
//            result + (point[str] ?? 0)
//        }
//    }
//}

// 카드뭉치
//func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
//    var a: Bool = true
//    var cards1 = cards1
//    var cards2 = cards2
//    for i in goal {
//        if i == cards1.first {
//            cards1.removeFirst()
//        } else if i == cards2.first {
//            cards2.removeFirst()
//        } else {
//            a = false
//        }
//    }
//
//    return a ? "Yes" : "No"
//}

// 2016년
// 1월 1일 = 금
// 2월 1일 = 월
// 3월 1일 = 화
// 4 = 금, 5 = 일 , 6 = 수 , 7 = 금 , 8 = 월 , 9 = 목 , 10 = 토 , 11 = 화, 12 = 목

//func solution(_ a:Int, _ b:Int) -> String {
//    let day = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
//    var cnt = -1
//    var days = (0...365).map{day[$0%7]} // 순서대로 넣음
//    for i in 1...a {
//        if (i == a) {
//            cnt += b
//            break
//        }
//        switch i {
//        case 1,3,5,7,8,10,12:
//            cnt += 31
//        case 2:
//            cnt += 29
//        default:
//            cnt += 30
//        }
//    }
//    return days[cnt]
//}
//print(solution(1, 1))

// 모의고사
// 1번 학생 : 12345
// 2번 : 21232425
// 3번 : 3311224455 반복해서 찍는다
// 총 10000 문제 !
//import Foundation
//
//func solution(_ answers:[Int]) -> [Int] {
//    // 1. answer 을 돈다.
//    // 2. 1,2,3 번째 학생의 배열을 만든다.
//    // 3. 1 1 6 1 11 1   student 의 인덱스는 (answer / stu.count) * stu.count  + answer % stu.count
//    let student: [[Int]] = [[1,2,3,4,5], [2,1,2,3,2,4,2,5], [3,3,1,1,2,2,4,4,5,5]] // 정답 배열
//    var ans:[Int] = []
//    var compare = 0
//    for (i,j) in student.enumerated() { // [1,2,3,4,5]
//        var cnt = 0
//        for (index, element) in answers.enumerated() {
//            if element == j[index % j.count] {
//                cnt += 1
//            }
//        }
//        if cnt > compare {
//            ans.removeAll()
//            ans.append(i+1) // 컸다면 인덱스를 넣어준다.
//            compare = cnt
//        } else if cnt == compare {
//            ans.append(i+1)
//        }
//    }
//
//    return ans
//}
//print(solution([2,1,2,3,2,4,2,5]))

// 기사단원의 무기
// 1~number 배열에서 순서대로 약수의 개수를 구한다.
// 약수의 개수가 공격력인데 limit 를 넘으면 안된다. 넘는다면 power 수를 더한다.
//
//func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
//    return (1...number).map{ countDivisor($0)}.reduce(0){ result , num in
//        num > limit ? result + power : result + num
//    }
//}
//
//func countDivisor(_ num: Int) -> Int {
//    let sqrtN = Int(sqrt(Double(num))) // 제곱근
//    var cnt = 0
//    for i in 1...sqrtN {
//        if num.isMultiple(of: i) {
//            cnt += 1
//            if i != num / i {
//                cnt += 1
//            }
//        }
//    }
//    return cnt
//}
//print(solution(10, 3, 2))


// 소수 만들기
// 숫자 3개를 더해서 만들수 있는 소수의 개수

//func solution(_ nums:[Int]) -> Int{
//    var answer = -1
//    var ans: [Int] = []
//    var sum = 0
//    for a in nums.indices {
//        for b in a + 1..<nums.count {
//            for c in b + 1 ..< nums.count {
//                ans.append((nums[a] + nums[b] + nums[c]))
//            }
//        }
//    }
//  //  print("Hello Swift")
//
//    return isPrimeNum(ans)
//}
//func countDivisor(_ number: Int) -> Bool{
//    let sqrtN = Int(sqrt(Double(number)))
//    var cnt = 0
//    for i in 1...sqrtN {
//        if number.isMultiple(of: i) {
//            cnt += 1
//            if i != number / i {
//                cnt += 1
//            }
//        }
//        if cnt > 2 {
//            return false
//        }
//    }
//    return true
//
//}
//func isPrimeNum(_ nums: [Int]) -> Int {
//     var cnt = 0
//    for i in nums {
//
//        if countDivisor(i) {
//            cnt += 1
//        }
//
//    }
//    return cnt
//}
// 과일장수
// 사과 점수, k = 3 m개만큼 담는다.
// 가장 낮은 점수가 p 인경우 사과 한상자의 가격은 p*m
// 얻을 수 있는 최대이익
// 포장할 수 있는 경우의 수
// 식 : (최저 사과 점수) x (한 상자에 담긴 사과 개수) x (상자의 개수)
// [1, 2, 3, 1, 2, 3, 1] [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]

// 1. score 를 내림차순으로 정렬한다. 3 3 2 2 1 1. 큰거부터 제거
//func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
//    var score = score.sorted(by: >)
//    var sum = 0
//    for i in stride(from: m - 1, to: score.count - (score.count % m), by: +m) {
//        sum += score[i] * m
//    }
//
//    return sum
//
//}
//print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]))

// 소수찾기
//func solution(_ n:Int) -> Int {
//    return (2...n).filter{isPrimeNum($0)}.count
//}
//
//func isPrimeNum(_ n: Int) -> Bool {
//    let sqrtN = Int(sqrt(Double(n))) // 제곱근
//    var cnt = 0
//    for i in 1...sqrtN {
//        if n.isMultiple(of: i) {
//            cnt += 1
//            if n / i != i {
//                cnt += 1
//            }
//            if cnt > 2 {
//                return false
//            }
//        }
//
//    }
//    return true
//
//}


// 덧칠하기
//// 길이가 N 미터인 벽
//func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
//    var st = 0
//    var cnt = 0
//    for i in section {
//        if st < i {
//            st =  i + m - 1
//            cnt += 1
//        }
//    }
//    return cnt
//}

//실패율

//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    var suc = (0...N+1).map{_ in 0.0} // 성공 생성
//    var trial = (0...N+1).map {_ in 0.0} //  시도 생성
//    
//    var dict = [Int: Double]()
//    for stage in stages {
//        for j in 1...stage {
//            trial[j] += 1
//            suc[j] += 1
//        }
//        if stage != N+1 {
//            suc[stage] -= 1
//        }
//    }
//    for i in 1...N {
//        dict[i] = trial[i] == 0.0 ? 0.0 : 1.0 - Double(suc[i] / trial[i])
//    }
//    return dict.sorted{
//        if $0.value == $1.value {
//            return $0.key < $1.key
//        }
//        return $0.value < $1.value
//    }.map{$0.key}
//    
//}

// 옹알이2
//  "aya", "ye", "woo", "ma"
//func solution(_ babbling:[String]) -> Int {
//    var cnt = 0
//    for i in babbling { 
//        var str = i
//        var preWord = ""
//        while(!str.isEmpty) {
//            if str.hasPrefix("aya") && preWord != "aya"{
//                str = String(str.dropFirst(3))
//                preWord = "aya"
//            } else if str.hasPrefix("ye") && preWord != "ye" {
//                str = String(str.dropFirst(2))
//                preWord = "ye"
//            } else if str.hasPrefix("woo") && preWord != "woo" {
//                str = String(str.dropFirst(3))
//                preWord = "woo"
//            } else if str.hasPrefix("ma") && preWord != "ma" {
//                str = String(str.dropFirst(2))
//                preWord = "ma"
//            } else {
//                break
//            }
//        }
//        cnt = str.isEmpty ? cnt + 1 : cnt
//    }
//    return cnt
//}
// 다트게임
//func solution(_ dartResult:String) -> Int {
//    var num:[Int] = []
//    for (index,element) in dartResult.enumerated() {
//        if num.isEmpty {
//            num.append(Int(String(element))!)
//            continue
//        }
//        let last = num.count - 1
//        switch element {
//        case "S":
//            continue
//        case "D":
//            num[last] *= num[last]
//        case "T":
//            num[last] = num[last] * num[last] * num[last]
//        case "*":
//            num[last] *= 2
//            if last > 0 {
//                num[last - 1] *= 2
//            }
//        case "#":
//            num[last] *= -1
//        case "0":
//            
//            if num[last] == 1 {
//                num[last] = 10
//            } else {
//                num.append(0)
//            }
//        case "1","2","3","4","5","6","7","8","9":
//            num.append(Int(String(element))!)
//        default:
//            break
//        }
//
//    }
//    print(num)
//    return num.reduce(0,+)
//}
//print(solution("1S2D*3T"))

// 로또의 최고순위와 최저 순위
//func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
//    var ansScore = Set(lottos).intersection(Set(win_nums)).count
//    var suc = [6:1 , 5:2 , 4:3 , 3:4, 2:5, 1:6, 0:6]
//    var zero = lottos.reduce(0) { result , num in
//       return num == 0 ? result + 1 : result
//    }
//    var high = ansScore + zero
//    var low = ansScore
//    // 1등 6개
//    
//   
//    
//    return [suc[high,default: 0],suc[low,default: 0]]
//}
//print(solution([45, 4, 35, 20, 3, 9]    ,[20, 9, 3, 45, 4, 35]    )
//)
//print(solution([44, 1, 0, 0, 31, 25]    ,[31, 10, 45, 1, 6, 19]    )
//)
//print(solution([0, 0, 0, 0, 0, 0]        ,[38, 19, 20, 40, 15, 25]        )
//)
// 문자열 나누기
//func solution(_ s:String) -> Int {
//    var s = s
//    var x = s.first ?? " "
//    var cnt = 0
//    var x_cnt = 0
//    var re = 0
//    for i in s {
//        if x == " " {
//            x = i
//        }
//        if x == i {
//            cnt += 1
//        } else {
//            x_cnt += 1
//        }
//        if cnt == x_cnt {
//            x = " "
//            re += 1
//            cnt = 0
//            x_cnt = 0
//        }
//    }
//    re = cnt == x_cnt ? re : re + 1
//    return re
//}
//func solution(_ s:String, _ skip:String, _ index:Int) -> String {
//    var str = s.utf8.map{ Int($0)}
//    var skip = skip.utf8.map { Int($0)}
//    var aa = (97...122).filter{!skip.contains($0)}
//    var re = ""
//    for i in str {
//        if let ix = aa.firstIndex(of: i){
//            re += String(UnicodeScalar(aa[(ix + index) % aa.count ])!)
//        }
//    }
//    return re
//}
//
//solution("aukks", "wbqd", 5) // 97 ~ 122

// 대충 만든 자판
//func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
//    var re:[Int] = []
//    for i in targets {
//        var sum = 0
//        for j in i {
//            var a_index = 1000
//            for a in keymap {
//                if let index = a.firstIndex(of: j) {
//                    a_index = min(a_index, a.distance(from: a.startIndex, to: index) + 1)
//                }
//            }
//            sum += a_index
//        }
//        sum < 1000 ? re.append(sum) : re.append(-1)
//    }
//    return re
//}
//print(solution(["ABACD", "BCEFD"], ["ABCD","AABB"]))
//print(solution(["AA"], ["B"]))
//print(solution(["AGZ", "BSSS"], ["ASA","BGZ"]))

// 체육복
// 여벌 체육복이 있는 학생이 빌려준다. 번호는 체격순으로 매겨짐
// 바로 앞번호의 학생이나 뒷번호의 학생에게만 빌려줄수 있다.
// 4는 3이나 5한테만 ㄱㄴ
//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    
//    var sum = 0
//    // 본인이 잃어버려서 자기걸 갖게되는 사람 수
//    var selfLost = Set(lost).intersection(reserve)
//    var reserve = Array(Set(reserve).subtracting(selfLost)).sorted() // 여분에서 제외
//    var lost = Array(Set(lost).subtracting(selfLost)).sorted() // 잃어버린 명단 제외
//    
//    for i in lost{ // 잃어버린 애들 하나씩 체크
//        if let a = reserve.firstIndex(of: i - 1) {
//            reserve.remove(at: a)
//            lost.removeFirst()
//        }
//        else if let a = reserve.firstIndex(of: i) {
//            reserve.remove(at: a)
//            lost.removeFirst()
//        }
//        else if let a = reserve.firstIndex(of: i + 1) {
//            reserve.remove(at: a)
//            lost.removeFirst()
//        }
//    }
//    return n - lost.count
//}
//// 분실한 애는 자기껄 줄 수 없다
//// 여분을 가져온애가 도난 당할 수 있다.
//print(solution(5, [2, 4], [1, 3, 5]))
//print(solution(3, [1,3], [2]))

// 숫자 짝꿍
//func solution(_ X:String, _ Y:String) -> String {
//    var x = (0...9).map{_ in 0}
//    var y = (0...9).map{_ in 0}
//
//    var ans = ""
//    for i in X {
//        if let index = Int("\(i)"){
//            x[index] += 1
//        }
//    }
//    for i in Y {
//        if let index = Int("\(i)"){
//            y[index] += 1
//        }
//    }
//    for i in stride(from: 9, to: -1, by: -1) {
//        if min(x[i],y[i]) > 0 { // 공통된게 없으면
//            let st = String(repeating: "\(i)", count: min(x[i],y[i]))
//            ans += st
//        }
//    }
//    ans = ans.isEmpty ? "-1" : ans
//  
//    return Set(ans) == ["0"] ? "0" : ans
//}
// 스택 큐
//struct Stack<T> { // LIFO
//    private var storage: [T] = []
//    mutating func push(_ element: T) {
//        storage.append(element)
//    }
//    
//    mutating func pop() -> T? {
//        return storage.popLast()
//    }
//    func peek() -> T? {
//        return storage.last
//    }
//    
//    var isEmpty: Bool {
//        return storage.isEmpty
//    }
//}
//// 스택 / 큐.
//func solution(_ s:String) -> Bool
//{
//    var stack = Stack<Character>()
//    for i in s {
//        if i == "(" {
//            stack.push("(")
//        } else {
//            if stack.peek() == "(" {
//                stack.pop()
//            } else {
//                stack.push(")")
//            }
//        }
//    }
//    return stack.isEmpty ? true : false
//}

//for i in 1...10 {
//    print(i)
//}
// a...b  =  a<= i <= b
// a..<b => b가 포함이 안됨

//print(stride(from: 1, to: 10, by: 2).map{$0})

//var a:[[Int]] = []
//
//func solution(_ num: [Int], _ n: Int) -> [[Int]] {
//    var a = num
//    var re:[[Int]] = Array(repeating: Array(repeating: 0, count: n), count: num.count / n)
//
//    var index = 0
//    for i in 0..<(num.count / n) {
//        for j in 0..<n {
//            re[i][j] = a[index]
//            index += 1
//        }
//    }
//    
//    return re
//}
//print(solution([1,2,3,4,5,6,7,8], 2))
// 최솟값 만들기

//func solution(_ A:[Int], _ B:[Int]) -> Int
//{
//    var (a,b) = (A,B)
//    var re = zip(a.sorted(),b.sorted(by: >)).map{$0 * $1}
//    var ans = 0
//    for i in re {
//        ans += i
//    }
//    return ans
//}

// 이진변환 반복하기
// 0을 제거한 갯수, 반복한 수
//func solution(_ s:String) -> [Int] {
//    var s = s
//    var cnt = 0
//    var cnt_zero = 0
//    // 110010101001 -> 111111
//    while s.count > 1 { // 부등호로 하는게 나음
//        cnt += 1
//        var convert_s = s.filter{ $0 != "0"}.count // 6
//        // 원래 스트링 = s
//        cnt_zero += s.count - convert_s // 0의 갯수
//        // 일반 정수를 이진수로 변환해야함
//        var convert_s2 = String(convert_s, radix: 2) //110
//        s = convert_s2 // 110으로 다시 초기화
//    }
//    
//    
//    return [cnt, cnt_zero]
//}
//print(solution("1111111"))

//func solution(_ my_String: String) -> String {
//    var s = my_String
//    
//    for i in "aeiou" {
//        s = my_String.replacingOccurrences(of: "\(i)", with: "")
//    }
//    return s
//}

//func solution(_ n:Int) -> [Int] {
//    var n = n
//    var cnt = 2
//    var re = Set<Int>()
//    while n > 1 {
//        if n.isMultiple(of: cnt) {
//            n /= cnt
//            re.insert(cnt)
//        } else {
//            cnt += 1
//        }
//        
//    }
//    return Array(re).sorted()
//}
//print(solution(17))
//

//func solution(_ s:String) -> Int {
//    var s = s.split(separator: " ")
//    var sum = 0
//    var pre = 0
//    for i in s {
//        if i == "Z" {
//            sum -= pre
//            continue
//        } 
//        if let num = Int("\(i)") {
//            sum += num
//            pre = num
//        }
//    }
//    return sum
//}
//
//solution("10 20 30 40")

//func solution(_ n:Int) -> Int
//{
//    var com = n
//    repeat {
//        com += 1
//    } while String(n,radix: 2).filter{$0 == "1"}.count != String(com,radix: 2).filter{$0 == "1"}.count
//    
//    return com
//}
//print(solution(15))

// 피보나치 수

//func solution(_ n:Int) -> Int {
//    var num = [0,1]
//    for i in 2...n {
//        if i.isMultiple(of: 2) {
//            num[0] = (num[0] + num[1]) % 1234567
//        } else {
//            num[1] = (num[1] + num[0]) % 1234567
//        }
//    }
//    return n.isMultiple(of: 2) ? num[0] : num[1]
//}
// k의 갯수
//func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
//    
//    return (i...j).map{"\($0)".filter{"\($0)".contains("\(k)")}.count}.reduce(0,+)
//}

// 짝지어 제거하기
// pop

func solution(_ s:String) -> Int{
    var s = s // baabaa
    var st:[String] = []
    while !s.isEmpty {
        // st의 마지막이 있다면
        if st.last ?? "0" == "\(s.first)" { // 같다면
            st.popLast()
            s.removeFirst()
        } else {
            st.append("\(s.removeFirst())")
        }
    }
    return st.isEmpty ? 1 : 0
}
