# Numerical Analysis – Approximating Values
###### This is an iOS application written in Swift that helps to demonstrate the changes of the values "e" due to "accuracy" and "power" variables.
###### I have created this application for the "Numerical Analysis" course in my university.
### Here are some examples:

<img src="https://github.com/yusif-projects/numerical-analysis-approximation/blob/master/Previews%20for%20GitHub/1.gif" width="250" height="250" /><img src="https://github.com/yusif-projects/numerical-analysis-approximation/blob/master/Previews%20for%20GitHub/2.gif" width="250" height="250" /><img src="https://github.com/yusif-projects/numerical-analysis-approximation/blob/master/Previews%20for%20GitHub/3.gif" width="250" height="250" />

### Here is the "main feature" of this application:
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
