// sample lines of code for swift
// \() is used to replace string()
// -> is used to get return
func greet(name:String, lunchname:String) ->String {
    return "Hello \(name), today's lunch is \(lunchname)."
}

greet("hema", "aubergine curry")


//calling the function
func getprices() -> (Double, Double, Double)
 { return (3.99, 3.656, 1.5)
 }
getprices()


// simple addition of numbers
func getsumof(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

getsumof(56,43,66,88)

//getting average of numbers
func getaverage(numbers:Int...) -> Int {
    var sum = 0
    var result = 0
    let div = count(numbers)
    for number in numbers {
        sum += number
    }
    return sum
    result = sum/div
    return result
}

getaverage(25,25)