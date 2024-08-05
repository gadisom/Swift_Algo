import Foundation

// [1차] 캐시
//func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
//    var runTime = 0
////    var cities = cities.map{ $0.lowercased() }
//    var cacheStore: [String] = []       // 맨 오른쪽이 가장 참조값이 작은 값.
//    
//    for data in cities.map({ $0.lowercased() }) {
//        if cacheStore.contains(data) { // 데이터가 있으면 재참조
//            runTime += 1
//            cacheStore.remove(at: cacheStore.firstIndex(of: data)!)  // 데이터를 삭제하고
//            cacheStore.append(data)         // 다시 추가함.
//        } else {
//            runTime += 5
//            if cacheStore.count == cacheSize, cacheSize > 0 { // 꽉차있으면?
//                cacheStore.removeFirst()
//            }
//            
//            if cacheSize > 0 {
//                cacheStore.append(data)
//            }
//        }
//    }
//    
//    return runTime
//}
//solution(5, ["a", "b", "c", "b", "a"])
// [1차] 보물지도
//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//    var answer: [String] = []
//    var ans = ""
//    var array1 = arr1.map{ Array(String($0, radix: 2)) }
//    var array2 = arr2.map{ Array(String($0, radix: 2)) }
//    
//    for i in 0..<array1.count {
//        while array1[i].count < n {
//            array1[i].insert("0", at: 0)
//        }
//    }
//    for i in 0..<array2.count {
//        while array2[i].count < n {
//            array2[i].insert("0", at: 0)
//        }
//    }
//    
//    for i in 0..<n {
//        for j in 0..<n {
//            if array1[i][j] == "0", array2[i][j] == "0" {
//                ans += " "
//            } else {
//                ans += "#"
//            }
//        }
//        answer.append(ans)
//        ans = ""
//    }
//
//    return answer
//}
//solution(1,     [0], [0])
// 행렬의 덧셈
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var answer: [[Int]] = []
//    var ans: [Int] = []
//    
//    for i in 0..<arr1.count {
//        for j in 0..<arr1[0].count {
//            ans.append(arr1[i][j] + arr2[i][j])
//        }
//        answer.append(ans)
//        ans = []
//    }
//    
//    return answer
//}
//solution([[1,2],[2,3]], [[3,4],[5,6]])
