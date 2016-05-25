//
//  main.swift
//  Day2_Struct
//
//  Created by 이상학 on 2016. 5. 25..
//  Copyright © 2016년 Ryan. All rights reserved.
//


//// 강사님 코드
//struct Point {
//    var x : Int
//    var y : Int!
//    
//    init(x : Int){
//        self.x = x
//        self.y = 0
//    }
//    
//    init(){
//        self.init(x : 0)
//    }
//    
//    mutating func moveTo(x: Int, y : Int){
//        self.x = x // 내부 프로퍼티 변경시엔 mutating  필수
//    }
//}
//
//let p1 = Point()
//let p2 = Point(x:10)
//
////var array = Array<String>  // 커맨드 + 클릭하면 구현부분으로 이동
////let newArray = array.reverse()


////구조체  p114
//struct Point {
//    //프로퍼티
//    var x = 0
//    var y = 0
//    
//    //함수
//    func description() -> String {
//        return "Point : \(x), \(y)"
//    }
//}
//var p1 = Point()
//p1.x = 10
//p1.y = 20
//var p2 = Point(x: 3, y: 5) // 프로퍼티를 초기화하는 자동 생성된 init
//print(p1.x)



////초기화 메소드 p115
//struct Point{
//    //초기화 필요 프로퍼티
//    var x : Int
//    var y : Int
//    
//    //이니셜라이져
//    init(){
//        self.x = 0
//        self.y = 0
//    }
//}
//var obj = Point()
////var p2 = Point(x: 3, y: 5) // init 있기 때문에 자동 생성 안됨




////정적 메소드와 정적 프로퍼티 p116
//struct MyStruct {
//    //정적 메소드 정의
//    static func staticFunc(){
//        print("정적 메소드")
//    }
//    
//    //정적 프로퍼티
//    static var staticProperty : Int!
//}
//MyStruct.staticFunc() //객체 생성하지 않고 바로 가능
//MyStruct.staticProperty = 10




//// Mutating p117
//struct Point{
//    var x = 0
//    var y = 0
//    
//    mutating func moveTo(x : Int, y : Int){
//        self.x = x
//        self.y = y
//    }
//}
//var p = Point()
//p.moveTo(10, y: 20) //값 변경



////  상속과 재정의 p118
//class MyClass {
//    var value = 0
//}
//var obj1 = MyClass()
//var obj2 = obj1
//obj1.value = 10
//print(obj1.value)
//print(obj2.value)
//
//struct MyStruct {
//    var value = 0
//}
//var obj3 = MyStruct()
//var obj4 = obj3
//obj3.value = 10
//print(obj3.value)
//print(obj4.value)



////////////////////////
//enum


// 강사님 코드
enum Pet : String {
    case Dog = "0"
    case Cat = "11"
    var name : String { return "Pet"}
}

let myPet = Pet.Dog
print(myPet.rawValue)

let myPet2 = Pet(rawValue: "0") // 옵셔널, 범위를 벗어나 nil을 반환할 수 있으므로
print(myPet2)

struct Person {
    var gender : Gender!
}
enum Gender : String {
    case M = "Male"
    case F = "Female"
}
let g = Gender.M



// 프로퍼티와 메소드 p121
enum Pet2 : Int{
    case Cat = 0
    case Dog
    case Other
    
    var name : String{
        switch self {
        case .Cat:
            return "고양이"
        case .Dog:
            return "강아지"
        default:
            return "기타"
        }
    }
    
    func description() -> String {
        return self.name
    }
}
var raz = Pet.Cat
print(raz.name)
//raz.description() // 왜 에러????????????????



// 연관 p122
enum ArrivalStatus{
    case OnTime
    case Dalay(Int)
}
var flight = ArrivalStatus.Dalay(1) // 연관 할목이 있는 Enum 객체 생성
switch flight{
    case .OnTime:
        print("제때 도착")
    case .Dalay(let hour):
        print("지연 시각 \(hour)")
}













