//
//  main.swift
//  Day2_Protocol
//
//  Created by 이상학 on 2016. 5. 25..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

////강사님 코드
//protocol Singing{
//    func sing()
//    var value : Int { get set }
//    init(value : Int)
//}
//
//class Bird : Singing{
//    func sing() {
//        print("Sing")
//    }
//    var value = 0
//    var value2 : Int{
//        get { return 0 }
//        set {}
//    }
//    required init(value: Int) { // required 필수
//        print("init")
//    }
//}
//
//func sayHello(who : Singing){}
//func sayHello2() -> Singing! {return nil}
//var prop : Singing
//
//protocol MyClassDelegate : class {}
//class MyStruct : MyClassDelegate{}
//class MyClass {
//    weak var delegate : MyClassDelegate!
//}
//var obj = MyClass()
//obj.delegate = MyStruct()



////프로토콜 p123
//protocol Singing{
//    func sing()
//}
////메소드
//class Bird : Singing{
//    func sing() {
//        print("쨲쨲쨲")
//    }
//}
////구조체 프로토콜
//struct Cat : Singing{
//    func sing() {
//        print("양양")
//    }
//}
//protocol Dancing{
//    func dance()
//}
//class Human : Dancing, Singing{
//    func sing(){
//        print("라라라")
//    }
//    func dance(){
//        print("추추춤")
//    }
//}
//
//protocol Species {
//    // 타입 메소드 선언
//    static func species() -> String
//}
//// 타입 메소드 구현
//class Cow : Species {
//    //타입 멧드 구현
//    static func species() -> String {
//        return "소"
//    }
//}



////  프로퍼티 p125
//protocol HoldingBreath {
//    var duration : Int{ get set}
//}
////저장 프로퍼티
//class Diver : HoldingBreath{
//    var duration: Int = 0
//}
////계산 프로퍼티
//class MyClass : HoldingBreath {
//    var duration: Int {
//        get {
//            return 0
//        }
//        set {}
//    }
//}
//protocol Species {
//    // 타입 메소드 선언
//    static var averageLife : Int { get }
//}
//class Cow : Species{
//    //타입 프로퍼티
//    static var averageLife: Int{
//        return 10
//    }
//}




//초기화 메소드 p126
protocol Named {
    init(name : String)
    init?()
}
class Monster: Named {
    let name : String
    required init(name : String){
        self.name = name
    }
    required init(){
        self.name = "무명"
    }
    
}

protocol Singing {
    func sing()
}

class Human : Singing {
    func sing() {
        print("Sing Sing Sing")
    }
    
    func drink() {
        print("Drink")
    }
}
// 클래스 타입으로 선언한 객체
var obj1 : Human = Human()
// 프로토콜에 선언한 메소드 사용
obj1.sing()
// 프로토콜에 선언하지는 않았지만 클래스에 작성한 메소드
obj1.drink()



//프로토콜 상속 p128



