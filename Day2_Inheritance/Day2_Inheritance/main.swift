//
//  main.swift
//  Day2_Inheritance
//
//  Created by 이상학 on 2016. 5. 25..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation


//// 강사님 코드
//class Parent {
//    var parentVal = 0
//    init(val : Int){ // 부모의 이니셜
//        parentVal = val
//    }
//}
//class Child : Parent {
//    var childVal1 = 1
//    var childVal2 : Int! // 부모의 이니셜라이져 상속 받음
//    var childVal3 : Int // 이 경우는 단독으론 불가 init 필요
//    
//    init(childVal : Int){ // designated
//        childVal3 = childVal
//        super.init(val: 0) // 이 코드가 위로 올라가면 에러
//    }
//    
//    convenience init() {
//        self.init(val : 0)
//    }
//}
//
////var child = Child(val: 10)
////print(child.parentVal)
//
//var child = Child(childVal: 10) // 자식 클래스의 designated로 사용해야 함 즉, 부모의 val로 하면 안됨




////상속 기초
//class Rectangle{
//    // 저장 프로퍼티
//    var width = 0, height = 0
//    
//    // 계산 프로퍼티
//    var isSquare : Bool{
//        return width == height
//    }
//    
//    //메소드
//    func size() -> Int {
//        return width * height
//    }
//    
//}
//class Square : Rectangle{
//    // size() 재정의
//    override func size() -> Int {
//        return width * height
//    }
//    
//    //저장 프로퍼티 재정의
//    override var width: Int {
//        didSet{ // didSet 없으면 계산 프로퍼티라 판단되어서 에러남
//            if height != width {
//                height = width
//            }
//        }
//    }
//    
//    //계산 프로퍼티 재정의
//    override var isSquare: Bool{
//        return true
//    }
//}
//var square = Square()
//square.width = 90
//square.height = 100
//print(square.isSquare)
//print(square.size())



////포인터
//class Parent{
//    func description() -> String {
//        return "Parent 클래스"
//    }
//}
//class Child : Parent{
//    
//    //재정의
//    override func description() -> String {
//        return "Child 클래스"
//    }
//    
//    func printDescription() {
//        // 부모 클래스에 구현한 description 메소드
//        print("super.description : \(super.description())")
//        print("self.description : \(self.description())")
//    }
//}
//var obj = Child()
//obj.printDescription()




//// 초기화 메소드 상속
//class Parent{
//    var a : Int
//    
//    // Designated Initializer
//    init(a : Int){
//        self.a = a
//    }
//    
//    // Convenience Init
//    convenience init(){
//        self.init(a : 0)
//    }
//}
//class Child : Parent{
//    //초기값이 있는 프로퍼티
//    var b = 100
//}
//var childObj1 = Child(a: 10) // Designated로 객체 생성
//var childObj2 = Child() // Convenience로 객체 생성




//// 자식 클래스의 Designated init
//class Parent{
//    var a : Int
//    
//    // 부모 클래스의 Design init
//    init(a : Int){
//        self.a = 0
//    }
//}
//class Child : Parent {
//    var b : Int
//    
//    //Design init
//    init(a : Int, b : Int){
//        self.b = b // 먼저 해야함
//        super.init(a: a)
//    }
//}
//var obj = Child(a:10, b:20)
////var obj2 = Child(a:10) // 에러. 자식클래스에 Design init 있기 때문에 부모 클래스의 init 상속 안됨




////  자식 클래스의 Conven init p105
//class Parent{
//    var a : Int
//
//    // 부모 클래스의 Design init
//    init(a : Int){
//        self.a = 0
//    }
//}
//class Child : Parent {
//    var b : Int
//
//    // 자식의 Design init
//    init(a : Int, b : Int){
//        self.b = b // 먼저 해야함
//        super.init(a: a) // 부모 호출
//    }
//    
//    // 자식의 Conven init
//    convenience init(b : Int){
//        self.init(a : 10, b : b) // 같은 클래스의 Design init으로 위임
//        
//        // 나머지 초기화 동작
//    }
//}
//var obj = Child(a: 10, b: 20) // 자식 클래스의 Design init로 객체 생성
//var obj2 = Child(b: 30) // 자식 클래스의 Conven init로 객체 생성
//print(obj.a)
//print(obj.b)
//print(obj2.a)
//print(obj2.b)




//init 재정의
//class Parent{
//    var a : Int
//    
//    // 부모 클래스의 Design init
//    init(a : Int){
//        self.a = a
//    }
//    
//    // Conven init
//    convenience init() {
//        self.init(a : 0)
//    }
//}
//class Child : Parent {
//    var b : Int
//
//    // 초기화 메소드 재정의, Design init
//    override init(a : Int){
//        self.b = 0 // 먼저 해야함
//        super.init(a: a) // 부모 호출
//    }
//
//    // Design init
//    init(a: Int, b: Int) {
//        self.b = b
//        super.init(a: a)
//    }
//}
//var obj = Child(a: 10, b: 20) // 자식 클래스의 Design init로 객체 생성
//var obj2 = Child(a: 30) // 재정의한 Design init로 객체 생성
//var obj3 = Child() // 상속받은 Conven init로 객체 생성
//print(obj.a) // 예상 : 10, 결과 : 10
//print(obj.b) // 예상 : 20, 결과 : 20
//print(obj2.a) // 예상 : 30, 결과 : 30
//print(obj2.b) // 예상 : 0, 결과 : 0
//print(obj3.a) // 예상 : ?, 결과 : 0
//print(obj3.b) // 예상 : ?, 결과 : 0




////2단계 초기화
//class Parent{
//    var a : Int
//    
//    // 부모 클래스의 초기화
//    init(){
//        // 1단계 : 프로퍼티 초기화
//        a = 0
//        
//        // 2단계 초기화
//    }
//}
//class Child : Parent {
//    var b : Int
//    
//    init(a : Int, b : Int){
//        // 1단계 : 자식 클래스의 초기화에서 부모 클래스까지 초기화
//        self.b = b
//        
//        
////        self.a = a // super.init로 부모를 초기화 전에 부모 프로퍼티 접근 시 에러
//        
//        
//        super.init()
//        
//        // 2단계 : 부모 클래스의 값 재성정
//        self.a = a
//    }
//}



//Failable init
class Parent{
    var value : Int
    
    // failable init
    init?(value :Int){
        if value <= 0{
            self.value = 0
            return nil
        }
        self.value = value
    }
}
class Child : Parent{
    // fialable init
    override init?(value : Int){
        // super.init 호출 필요
//        super.init(value: 0)
        super.init(value: 0)
        
        //유효성 검사
        if value < 0 {
            return nil
        }
        self.value = value
    }

}
var obj = Child(value: 0)
var obj2 = Child(value: 10)
print("obj : ", obj)
print("obj?.value : ", obj?.value)
print("obj2?.value : ", obj2?.value)

/////////////////////////////// 왜 항상 nil???




class Shape {
    var edge : Int
    
    // Failable init
    init?(numberOfEdge : Int){
        if numberOfEdge < 1 {
            edge = 0
            return nil
        }
        else{
            edge = numberOfEdge
        }
    }
    
    // Design init
    init(){
        edge = 0
    }
    
    // 실습을 위함 메소드
    func size(width : Int, height : Int) -> Int{
        return width * height
    }
    func description() -> String{
        return "Shape"
    }
}
class Rectangle : Shape{
    var width = 0
    var height = 0
    
    override init(){
        super.init()
    }
    
    //Failable init
    init?(width : Int, height : Int){
        // 부모 클래스의 failable 위임 
        super.init(numberOfEdge : 4)
        
        //초기값과 함께 선언한 프로퍼티는 초기화 조건 체크 이후에 초기화 가능
        if width < 0 || height < 0 {
            return nil
        }
        else {
            self.width = width
            self.height = height
        }
    }
}
let rect1 : Rectangle = Rectangle()
// Failable init 로 객체 생성
let rect2 : Rectangle? = Rectangle(width: 10, height: 10)
let rect3 : Rectangle? = Rectangle(width: 10, height: -10)
print("rect1.edge : ", rect1.edge)
print("rect2?.edge : ", rect2?.edge)
print("rect3?.edge : ", rect3?.edge)



//실습
class Triangle : Shape{
    override init(){
       
        super.init()
    }
    
    override func size(width: Int, height: Int) -> Int {
        return (width * height) / 2
    }
    
    override func description() -> String {
        return "Triangle"
    }
}










