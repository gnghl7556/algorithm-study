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

