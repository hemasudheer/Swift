// Playground - noun: a place where people can play

import UIKit

var mylist:[String] = ["hema","sudheer"]

if mylist.isEmpty{
    println("The list is empty")
} else {
    println("The list is not empty")
}
mylist.append("priya") //for adding one item to array
mylist += ["keerthi"]
mylist += ["chandra", "krishna", "ramana"] // for adding a array to previous one




let vegetable = "celery"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}


// creating a dictionary
var airports = [ "London": "LHR",
                 "Chennai": "chinnasamy",
                 "Delhi": "IGR",
                 "Mumbai": "CSI"]

// updating value in dictionary
if let oldvalue = airports.updateValue("Shivaji", forKey: "Mumbai"){
     println("The old value is \(oldvalue).")
}
// removing value in dictionary
let removevalue = airports.removeValueForKey("London")
airports["Srilanka"] = "colombo"


for (airportCity, airportName) in airports {
    println("\(airportCity):\(airportName)")
}


for airportCode in airports.keys {
    println("Airport cities are: \(airportCode)")
}


// accessing dictonary keys and values
let aiportnames = [String](airports.values)
let aiportcities = [String](airports.keys)


// to create a empty dictionary
var Ages = [String : Int]()
Ages["hema"] = 26


airports

for airportCode in airports.keys {
    println("Airport code: \(airportCode)")
}







