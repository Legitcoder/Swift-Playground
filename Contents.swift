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


print(reverseString(str: "This is a String"));


