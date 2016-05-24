//: Playground - noun: a place where people can play

import UIKit


//////////////
// 함수
//////////////


var str = "Hello, playground"

func sayHello(who str : String){
    print("Hello \(str)")
}
sayHello(who: "Swift")

func sayHello(who arg1 : String, when : String){
    print("Hello \(arg1), \(when)")
}
sayHello(who: "aaa", when: "bb")



func greeting(){
    print("Hello Swift")
}
greeting()


func areYouOk() -> Bool { // -> 리턴 형
    return true
}
let ok = areYouOk()


func favoriteDrink() -> String {
    return "Coffee"
}
favoriteDrink()


func random3() -> (Int, Int, Int) {
    let r1 = Int(arc4random() % 10 )
    let r2 = Int(arc4random() % 10 )
    let r3 = Int(arc4random() % 10 )
    
    return (r1, r2, r3)
}
var nums = random3()
print("Random Numbers 3 : \(nums.0), \(nums.1), \(nums.2)")

var (num1, num2, num3) = random3()
print("Random Numbers 3-2 : \(num1), \(num2), \(num3)")


func greeting(person : String) {
    print("Hello " + person)
}
greeting("Friend")


func greeting2(person : String, emotion : String){ // 외부 파라미터 생략
    print("Hello " + person + " with " + emotion)
}
greeting2("My Friend", emotion: "Smile") // 2번째는 자동 생성


func greeting3(whom person : String, with emotion : String){
    print("Hello " + person + " with " + emotion)
}
greeting3(whom: "My Friend", with: "Hug") // 명시적


func greeting4(who person : String){ // 첫번째는 보통 사용하지 않지만 할 수는 있음
    print("Hello" + person)
}
greeting4(who: "Swift")


func greeting5(person : String, _ emotion : String){ // 두번째는 생략 하려먼 _ 필요
    print("Hello " + person + " with " + emotion)
}
greeting5("Swift", "Passion")


func greeting6(whom person : String, emotion : String = "Happy"){
    print("Hello " + person + " with " + emotion)
}
greeting6(whom: "Swift") // 기본값이 있으면 생략 가능
greeting6(whom: "Swift", emotion: "Passion")


func addAll(values : Int...) -> Int { // 가변 인자
    if values.count == 0 {
        return 0
    }
    else {
        var result = 0
        for v in values {
            result += v
        }
        return result
    }
}
addAll(1,2,3) // 몇개가 들어와도 상관없음


func swapTwoValues(inout var1 : Int, inout _ var2 : Int){ // 두번째 외부 파라미터 생략가능
    let temp = var1
    var1 = var2
    var2 = temp
}
var value1 = 1
var value2 = 2
//swapTwoValues(value1, value2) // 에러
//swapTwoValues(&value1, &value2)
value1
value2


func nilReturnFunction() -> Int? {
    // 만약 옵셔널 아니면 에러
    return nil
}
let ret = nilReturnFunction()


func appendIntToString(str : String, _ val : Int?) -> String {
    // 가드를 이용한 early exit, 옵셔널 바인딩
    guard let num = val else{ // 가드가 조건에 부합하지 않으면(nil) 수행
        return str
    }
    return str + String(num)
}
appendIntToString("Hello", 1)
appendIntToString("Hello", nil) // nil 가능 옵셔널이기 때문
let optionalVal : Int? = 2
appendIntToString("Swift", optionalVal)
//appendIntToString(nil, 3) // 에러 옵셔널이 아니기 때문


func addStringLength(val : Int, _ arg : String!) -> Int {
    guard let str = arg else{
        return val
    }
    
    return val + str.characters.count
}
addStringLength(0, "Hello")
addStringLength(1, nil) // 옵셔널이기 때문에 가능


func greeting10(){
    // greeting10() 으로 지칭
}
func greeting10(whom : String){
    // greeting10(_:) 으로 지칭
}
func greeting10(whom : String, when : Int){
    // greeting10(_:when:) 으로 지칭
}

