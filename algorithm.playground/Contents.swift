import Cocoa
import Foundation
/// 001 문자열 변환하기
func solution001(_ n:Int)->String{
    return String(n)
}
print(solution001(10))
/// 002 두 수의 연산값 비교하기
func solution002(_ a:Int,_ b:Int)->Int {
    if let value = Int("\(a)\(b)"){
        return value >= 2*a*b ? value : 2*a*b
    }
    return 0
}
print(solution002(2, 91))
print(solution002(91, 2))
/// 003 문자열의 앞의 n글자

func solution003(_ my_string: String, _ n:Int) -> String {
    return String(my_string.prefix(n)) // 앞에서부터 n글자까지~~ prefix(n) -> SubString 반드시 String으로 고쳐야함
}
print(solution003("ProgrammerS123", 11))
func solution003_1(_ my_string: String,_ n:Int) -> String {
    let index = my_string.index(my_string.startIndex, offsetBy: n)
    let subString = my_string[my_string.startIndex..<index]
    return String(subString)
}
print(solution003_1("ProgrammerS123", 11))

/// 004 카운트 업
func solution004(_ start_num:Int, _ end_num:Int) -> [Int] {
    return Array(start_num...end_num)
}
print(solution004(3, 10))

func solution004_1(_ start_num:Int, _ end_num:Int) -> [Int] {
    var result:[Int] = []
    for a in start_num...end_num {
        result.append(a)
    }
    return result
}
print(solution004_1(3, 10))

/// 005 n번째 원소부터
func solution005(_ num_list:[Int],_ n:Int) -> [Int] {
    let index = num_list.index(num_list.startIndex, offsetBy: n-1)
    return Array(num_list[index...])
}
print(solution005([5,2,1,7,5], 2))
func solution005_1(_ num_list:[Int],_ n:Int) -> [Int] {
    return Array(num_list[(n-1)...])
}
print(solution005_1([5,2,1,7,5], 2))

func solution005_chatGPT(_ num_list: [Int], _ n: Int) -> [Int] {
    // n이 1부터 시작한다고 가정하고, Swift의 배열 인덱스에 맞게 n에서 1을 빼줍니다.
    // Swift의 배열 인덱스는 0부터 시작하기 때문입니다.
    let startIndex = n - 1
    
    // 유효성 검사: n이 num_list의 범위 내에 있는지 확인합니다.
    guard startIndex < num_list.count else {
        // n이 배열의 크기를 초과하는 경우, 빈 배열을 반환합니다.
        return []
    }
    
    // n번째 원소부터 마지막 원소까지 슬라이싱하여 반환합니다.
    return Array(num_list[startIndex...])
}

// 사용 예시
let num_list = [1, 2, 3, 4, 5]
let n = 3
let result = solution005_chatGPT(num_list, n)
print(result) // 출력: [3, 4, 5]
