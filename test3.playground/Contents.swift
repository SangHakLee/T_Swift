//: Playground - noun: a place where people can play

import UIKit


/////////////////
// 옵셔널
/////////////////
var str : String? = "Hello"
//str = nil
var i : Int? = nil
i = nil

//let str2 = str.lowercaseString // 에러 
if let realStr = str {
    print( realStr.lowercaseString )
}

let str3 = str ?? "nil String"
print("str3 : ", str3)

let str4 = str?.lowercaseString
print("str?.lowercaseString : ", str4)


let str5 = str!.lowercaseString
print("str!.lowercaseString : ", str5) // str 이 nil 이면 에러



var array1 : [String]? // 배열 자체가 옵셔널
var array2 : [String?] // 배열 내 원소가 옵셔널

//if let realStr = optionalStr {
//    print("문자열의 값 \(realStr)")
//}
//else{
//
//}


Int("123")
Int("ABC") // ABC는 숫자로 변환 할 수 없기 때문에 nil 변환



var optionalVar : Optional<Int> = nil
var optionalVar2 : Int? = nil

let array : [String?] = ["A", nil, "C"]
let element = array[0]


var nilAvailable : Int? = 0
if let val = nilAvailable{
    print("유효한 값 :  \(val)")
}


var nilAvailableStr : String? = "123"
if let val1 = nilAvailableStr, let val2 = Int(val1){
    print("nilAvailableStr는 유효한 값이고, Int 타입으로 변환하면 : \(val2)다")
}


func bindingChain(){
    let nilAvailableStr : String? = "123"
    guard let val1 = nilAvailableStr, let val2 = Int(val1) else{
        print("nilAvailableStr는 유효하지 않거나 Int로 변환할 수 없다")
        return;
    }
    
    print("nilAvailableStr는 유효한 값이고, Int 타입으로 변환하면 : \(val2)다")
}


var userSelectedColor : String?
var colorName = userSelectedColor ?? "RED" // nil 이면 RED
colorName


var optionalStr : String? = "ABC"
let str10 = optionalStr?.lowercaseString
str10

optionalStr = nil
let str11 = optionalStr?.lowercaseString
str11


let array10 : [String?] = ["A", nil, "C"]
let str12 = array10[1]?.lowercaseString


optionalStr = "ABC"
let str13 = optionalStr!.lowercaseString
str13


var optionalInt : Int! = 123

let intVal = optionalInt.successor()
intVal


// 옵셔널 문제
// 2번째 원소(index 1)에 1을 더하는 코드 작성
let array20 : [Int?] = [1,2,3] // 원소가 옵셔널
let array21 : [Int]? = [1,2,3] // 배열이 옵셔널
let array22 : [Int?]? = [1,2,3] //배열과 원소 모두 옵셔널

//array20[1]? + 1 // 왜 안될까??
array20[1]! + 1
array21![1] + 1
array22![1]! + 1

