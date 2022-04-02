import UIKit


//func myFunc() {
//
//    let a = 10
//    let b = 20
//    print(a+b)
//}

//func myFunc(a:Int, b:Int) -> Int {
//
//    return a+b
//
//}
//
//print(myFunc(a: 2, b: 3))

func myFunc(a:Int, b:Int = 0) -> Int {
    
    return a+b
 
}

myFunc(a: 2, b: 3)
myFunc(a: 1)

func myFunc(firstNumber a:Int, secondNumber b:Int = 0) -> Int {
    
    return a+b
 
}

myFunc(firstNumber: 1, secondNumber: 3)
