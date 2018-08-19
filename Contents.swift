//: Playground - noun: a place where people can play

import Cocoa

//Reverse a String
func reverseString(str: String) -> String {
    var reversedString : String = ""
    var i : Int = str.count - 1
    while(i >= 0) {
        reversedString += String(str[str.index(str.startIndex, offsetBy: i)])
        i -= 1
    }
    return reversedString
}


print(reverseString(str: "This is reversed"))

//Reverse String Recursively
func reverseStringRecursively(str: String) -> String {
    if (str == String(str[str.index(str.startIndex, offsetBy: 0)])) {
        return str
    }
//    let startIndexSubString = str.index(str.startIndex, offsetBy: 0)
//    let endIndexSubString = str.index(str.startIndex, offsetBy: str.count - 2)
//    let subStringRange = startIndexSubString ..< endIndexSubString
//    let subStr = str.substring(with: subStringRange)
    let endIndex = str.index(str.startIndex, offsetBy: str.count - 1)
    return String(str[str.index(str.startIndex, offsetBy: str.count - 1)]) + reverseStringRecursively(str: String(str[..<endIndex])) // last character + rest of substring
}


print(reverseStringRecursively(str: "This is reversed recursively"))

//Ternary Operator

func isYoung(age: Int) -> Bool {
    if(age < 30) {
        return true
    } else {
        return false
    }
}


func printAgeMessage(myAge: Int) {
    isYoung(age: myAge) ? print("You're less than 30, Still young I guess") : print("Damn Gramps, you getting old!!!")
}

printAgeMessage(myAge: 26)
printAgeMessage(myAge: 35)


// Arrays
var numArray : [Int] = [1,2,3,4,5]
numArray += [6,7]
numArray.append(8)
numArray.insert(0, at: 0) //Pushes the rest of the elements once to the right
numArray.remove(at: 0) // Pushes elements to the left after deleting target


//loops
for number in numArray where number % 3 == 0 {
    //print(number)
}

for i in 1...100 {
    if(i % 3 == 0 && i % 5 == 0) {
        print("FizzBuzz")
    }
    else if(i % 3 == 0) {
        print("Fizz")
    }
    else if(i % 5 == 0) {
        print("Buzz")
    }
    else {
        print(i)
    }
}

//Optionals
var thisIsAnOptional : String?
thisIsAnOptional = "This is now assigned a value"
print(thisIsAnOptional!)


