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


print(reverseStringRecursively(str: "This is reversed"))




