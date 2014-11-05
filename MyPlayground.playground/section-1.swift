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
    var div = countElements(numbers)
    for number in numbers {
        sum += number
    }
    result = sum/div
    return result
}
getaverage(25,25,67)


let name = "wrld"
if name == "world" {
    println("hello, world")
} else {
    println("I'm sorry \(name), but I don't recognize you")
}


//Strings

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
var instruction = "look over"
instruction += string2

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"

let dollarsign = "\u{1F876}"

let southpark = [
"Season 1 Episode 1 : KFC scene",
"Season 1 Episode 2 : MCD scene",
"Season 2 Episode 1 : kyle scene",
"Season 2 Episode 2 : kenny scene",
"Season 3 Episode 1 : eric scene",
"Season 3 Episode 2 : cartman scene",
"Season 3 Episode 3 : ww4 scene",
]

var scenecount = 0
for scene in southpark {
    if scene .hasSuffix("Episode 1"){
        ++scenecount
    }
}
println("There are \(scenecount) episodes in season 1")