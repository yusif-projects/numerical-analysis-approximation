# Numerical Analysis – Approximating Values
##### This is an iOS application written in Swift that helps to demonstrate the changes of the values "e" due to "accuracy" and "power" variables.
##### I have created this application for the "Numerical Analysis" course in my university.
##### The main "feature" of this application is this function:
```
func approximateValue(power: Double, accuracy: Double) -> Double {
    let x: Double = power
    let epsilon: Double = accuracy
    
    var u: Double = 1.0
    var i: Int = 1
    
    var array_of_u = [Double]()
    
    array_of_u.append(u)
    
    while u>epsilon {
        u = (x/Double(i))*u
        array_of_u.append(u)
        i = i + 1
    }
    
    var final_value: Double = 0.0
    
    for element in array_of_u {
        final_value = final_value + element
    }
    
    return final_value
}
```
