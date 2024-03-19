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
