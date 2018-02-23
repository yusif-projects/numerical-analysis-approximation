//Created by Yusif Aliyev
//February 23, 2018

import UIKit

func approximateValue(power: Double, accuracy: Double) -> Double {
    let x: Double = power
    let epsilon: Double = accuracy
    
    var u: Double = 1
    var i: Int = 1
    
    var array_of_u = [Double]()
    
    array_of_u.append(u)
    
    while u>epsilon {
        u = (x/factorial(n: Double(i)))*u
        array_of_u.append(u)
        i=i+1
    }
    
    var final_value: Double = 0
    
    for element in array_of_u {
        final_value = final_value + element
    }
    
    return final_value
}

func factorial(n: Double) -> Double {
    var mult: Double = n
    var retVal: Double = 1
    while mult > 0 {
        retVal *= mult
        mult -= 1
    }
    return retVal
}
