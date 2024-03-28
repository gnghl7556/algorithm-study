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

/// 006 조건에 맞게 수열 변환하기1
func solution006(_ arr:[Int]) -> [Int] {
    var result:[Int] = []
    for element in arr {
        if element >= 50{
            if element % 2 == 0 {
                result.append(element / 2)
            }else {
                result.append(element)
            }
        }else if element % 2 != 0{
            result.append(element*2)
        }else{
            result.append(element)
        }
    }
    return result
}
print(solution006([1,2,3,100,99,98]))

func solution006_1(_ arr:[Int]) -> [Int] {
    var result:[Int] = []
    for element in arr {
        if element >= 50 && element % 2 == 0{
            result.append(element / 2)
        }else if element < 50 && element % 2 != 0{
            result.append(element*2)
        }else{
            result.append(element)
        }
    }
    return result
}
print(solution006_1([1,2,3,100,99,98]))

func solution006_2(_ arr:[Int]) -> [Int] {
    return arr.map { element in
        if element >= 50 && element % 2 == 0 {
            return element / 2
        }
        else if element < 50 && element % 2 != 0 {
            return element * 2
        }else{
            return element
        }
    }
}
print(solution006_2([1,2,3,100,99,98]))

/// 007. 수 조작하기1
func solution007(_ n:Int,_ control:String) -> Int {
    var result = n
    for element in control {
        if element == "w" {
            result += 1
        }else if element == "s"{
            result -= 1
        }else if element == "d"{
            result += 10
        }else {
            result -= 10
        }
    }
    return result
}
print(solution007(0, "wsdawsdassw"))

func solution007_1(_ n:Int,_ control:String) -> Int {
    var result = n
    for element in control {
        switch element {
        case "w" :
            result += 1
        case "s" :
            result -= 1
        case "d" :
            result += 10
        case "a" :
            result -= 10
        default:
            break
        }
    }
    return result
}
print(solution007_1(0, "wsdawsdassw"))

/// 008. 길이에 따른 연산
func solution008(_ num_list:[Int]) -> Int {
    var result = 0
    if num_list.count >= 11 {
        result = num_list.reduce(0, +)
    }else{
        result = num_list.reduce(1, *)
    }
    return result
}
print(solution008([3, 4, 5, 2, 5, 4, 6, 7, 3, 7, 2, 2, 1]))

/// 009. 공백으로 구분하기 1
/// 문자열을 특정 문자가 나올때마다 구분해주는 것
func solution009(_ my_string: String) -> [String] {
    let words = my_string.split(separator: " ")
    return words.map {String($0)}
}
func solution009_1(_ my_string:String) -> [String] {
    return my_string.components(separatedBy: " ")
}
func solution009_2(_ my_string:String) -> [String] {
    return my_string.components(separatedBy: .whitespaces)
}
print(solution009("programmers"))
print(solution009_1("programmers"))
print(solution009_2("programmers"))

/// 010. 대문자로 바꾸기
func solution010(_ myString:String) -> String {
    return myString.uppercased()
}
print(solution010("aBcDeFg"))

/// 011. flag에 따라 다른 값 변환하기
func solution011(_ a:Int,_ b: Int,_ flag:Bool) -> Int {
    return flag ? a+b : a-b
}
print(solution011(-4, 7, true))
print(solution011(-4, 7, false))

/// 012. 문자열의 뒤의 n글자
func solution012(_ my_string:String,_ n:Int) -> String{
    guard n < my_string.count else{
        return my_string
    }
    let index = my_string.index(my_string.startIndex, offsetBy: my_string.count - n)
    let subString = my_string[index...]
    return String(subString)
}
print(solution012("ProgrammerS123", 19))
func solution012_1(_ my_string:String,_ n:Int) -> String {
    return String(my_string.suffix(n))
}
print(solution012_1("ProgrammerS123", 19))

/// 013. 배열 비교하기
func solution013(_ arr1:[Int],_ arr2:[Int]) -> Int{
    if arr1.count != arr2.count {
        return arr1.count > arr2.count ? 1 : -1
    }else {
        let num1 = arr1.reduce(0,+)
        let num2 = arr2.reduce(0,+)
        return num1 > num2 ? 1 : num1 == num2 ? 0 : -1
    }
}
print(solution013([49, 13], [70,11,2]))
print(solution013([100,17,84,1], [55,12,65,36]))
print(solution013([1,2,3,4,5], [3,3,3,3,3]))

/// 014. 문자열 곱하기
func solution014(_ my_string:String, _ n:Int) -> String {
    var resultStr: String = ""
    for _ in 0..<n {
        resultStr += my_string
    }
    return resultStr
}
print(solution014("string", 3))
func solution014_1(_ my_string:String, _ n:Int) -> String {
    return String(repeating: my_string, count: n)
}
print(solution014_1("string", 3))
// String(repeating: String, count: Int) 생성자에 대해 기억하기

/// 015. 정수부분
func solution015(_ flo:Double) -> Int {
    
    let result = String(flo).split(separator:".").map {String($0)}
    return Int(result[0]) ?? 0
}
print(solution015(0.753))
print(solution015(124.753))

func solution015_1(_ flo:Double) -> Int {
    return Int(flo)
}
print(solution015_1(0.753))
print(solution015_1(124.753))

/// 016.문자열을 정수로 변환하기
func solution016(_ n_str:String) -> Int {
    return Int(n_str) ?? 0
}
print(solution016("10"))
print(solution016("8542"))

/// 017.n번째 원소까지
func solution017(_ num_list:[Int],_ n:Int) -> [Int] {
    return num_list[..<n].map {Int($0)}
}
print(solution017([5,2,1,7,5], 3))

/// 019. 홀짝에 따른 다른 값 출력하기
func solution019(_ n:Int) -> Int {
    // n이 짝수라면, n이하의 짝수들을 모두 더한 값
    if n % 2 == 0 {
        let evenNumbers = (0...n).filter { $0 % 2 == 0}
        return evenNumbers.reduce(0) { $0 + ($1 * $1)}
    }else {
        let oddNumbers = (0...n).filter {$0 % 2 != 0}
        return oddNumbers.reduce(0, +)
    }
}
print(solution019(7))
print(solution019(10))
func solution019_1(_ n:Int) -> Int {
    // n이 짝수라면, n이하의 짝수들을 모두 더한 값
    if n % 2 == 0 {
        return stride(from:2, through:n, by:2).reduce(0) {$0 + ($1 * $1)}
    }else {
        return stride(from:1, through:n, by: 2).reduce(0, +)
    }
}
print(solution019_1(7))
print(solution019_1(10))

func solution020(_ numbers:[Int],_ n:Int) -> Int {
    var result = 0
    for element in numbers {
        result += element
        if result > n {
            return result
        }
    }
    return result
}
print(solution020([34,5,71,29,100,34], 123))
print(solution020([58, 44, 27, 10, 100], 139))

func solution020_1(_ numbers:[Int],_ n:Int) -> Int {
    return numbers.reduce(0) { $0 > n ? $0 : $0 + $1}
}
print(solution020_1([34,5,71,29,100,34], 123))
print(solution020_1([58, 44, 27, 10, 100], 139))

func solution021(_ num_list:[Int], _ n:Int) -> Int {
    return num_list.filter {$0 == n}.isEmpty ? 0 : 1
}
print(solution021([15, 98, 23, 2, 15], 20))
print(solution021([1, 2, 3, 4, 5], 3))


func solution022(_ myString:String) -> String {
    return myString.lowercased()
}
print(solution022("AaBbCcDd"))
