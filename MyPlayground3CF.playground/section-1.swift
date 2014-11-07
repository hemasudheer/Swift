// CF
import UIKit

for index in 1...10 {
    
    println("\(index) times 5 is \(index * 5)")
    
}


let base = 3
let power = 3
var answer = 1
for _ in 1...power {
    answer *= base
}
println("\(base) to the power of \(power) is \(answer)")


let names = ["hema", "sudheer", "h1", "l1"]
for name in names {
    println("Hello , \(name)")
}


let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    if ++diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
println("Game over!")


let anotherPoint = (1, 9)
switch anotherPoint {
case (let x, 0):
    println("on the x-axis with an x value of \(x)")
case (0, let y):
    println("on the y-axis with a y value of \(y)")
case let (x, y):
    println("somewhere else at (\(x), \(y))")
}

let integerToDescribe = 22
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    
case 20, 22, 24:
    description += " a even number grerater than 20"
    
    fallthrough
    
default:
    description += " an integer."
}
println(description)