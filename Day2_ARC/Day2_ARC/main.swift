//
//  main.swift
//  Day2_ARC
//
//  Created by 이상학 on 2016. 5. 25..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

class MyClass {
    deinit{
        print("객체 해제")
    }
}

//print("객체 생성 - 소유")
//var obj : MyClass! = MyClass()
//print("소유권 해제")
//obj = nil



//print("객체 생성 - 소유")
//var obj2 : MyClass! = MyClass()
//print("다른 포인터로소유하기")
//var anotherPointer = obj2
//print("소유권 해제")
//obj2 = nil



//class MyApplication{
//    func sayHello() {
//        // 메소드 내에서 객체 생성
//        var obj : MyClass!
//        obj = MyClass()
//        
//        // 다른 작업
//        
//        //메소드 실행 종료
//        //obj3 스코프 벗어남. 소유권 해제
//    }
//}
//var app = MyApplication()
//app.sayHello()



//class MyApplication2 {
//    // 프로퍼티로 선언
//    var obj : MyClass!
//    
//    init(){
//        obj = MyClass()
//    }
//    
//    func sayHello(){
//        print("Hello")
//    }
//}
//var app2 :MyApplication2! = MyApplication2()
//app2.sayHello() // 객페 해제 안됨
//app2 = nil //객체 해제 됨



//// 강한 순환 참조
//class ClassA {
//    // ClassB 참조
//    var objB : ClassB!
//    
//    deinit{
//        print("ClassA 해제")
//    }
//}
//class ClassB {
//    var objA : ClassA!
//    deinit{
//        print("ClassB 해제")
//    }
//}
//var a : ClassA! = ClassA()
//var b : ClassB! = ClassB()
//
////a.objB = b
////b.objA = a
////a = nil // 객체 해제 안됨
////b = nil // 객체 해제 안됨
//
//a.objB = nil // 직접 프로퍼티에 nil 해야 해제
//a = nil
//b = nil



//// 약한 순환 참조
//class Person {
//    var phone : Phone!
//    deinit{
//        print("Person 해제")
//    }
//}
//class Phone {
//    //소유하지 않은 참조
//    weak var owner : Person?
//    deinit {
//        print("Phone 객체 해제")
//    }
//}
//var owner : Person! = Person()
//var iphone : Phone! = Phone()
//iphone.owner = owner
//owner.phone = iphone
////owner = nil //객체 해제
////iphone = nil //객체 해제
//owner = nil // weak으로 참조하는 경우 자동으로 해제
//print(iphone.owner)



//unowned
class Country {
    var name : String
    init(name : String){
        self.name = name
    }
    deinit{
        print("Country 객체 해제")
    }
}
class Capital {
    var name : String
    
    unowned var country : Country
    
    init(name : String, country : Country){
        self.name = name
        self.country = country
    }
    
    deinit{
        print("City 객체 해제")
    }
}
var korea : Country! = Country(name: "Korea")
var seoul : Capital! = Capital(name: "Seoul", country: korea)

//korea = nil // 객체 해제. 순환 참조가 일어나지 않음
//seoul = nil // 객체 해제. 순환 참조가 일어나지 않음

korea = nil
//seoul.country //에러 seoul.country 는 dagling pointer













