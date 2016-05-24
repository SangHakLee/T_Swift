//
//  MyClass.swift
//  Day1_HelloWorld
//
//  Created by 이상학 on 2016. 5. 24..
//  Copyright © 2016년 Ryan. All rights reserved.
//

import Foundation

class MyClass {
    var birthYear = 2000 // 저장 프로퍼티
    
    var age : Int{ // 계산 프로퍼티
        get {
            return 2016 - birthYear
        }
        set {
            print("newValue : ", newValue)
        }
    }
}