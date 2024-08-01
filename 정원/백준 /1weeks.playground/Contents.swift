
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
solution("baabaa")
