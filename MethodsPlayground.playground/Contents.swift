//: Playground - noun: a place where people can play

import Cocoa

var title = "Using methods in Swift"
//Java version
//public void doesNothing()
//{...}

func doesNothing()
{
    print("Boring")
}

//Java boolean method
//public boolean isTired()
//{...}

func isTired() -> Bool
{
    return false
}

print(isTired())

func checkValue(someNumber :Int) -> String
{
    var answer :String = ""
    
    if(someNumber < -5)
    {
        answer = "That number is small"
    }
    else if(someNumber == 0)
    {
        answer = "The first even number 😃"
    }
    else
    {
        answer = "That number is not too small"
    }
    
    return answer
}

print(checkValue(0))

func multiParameterMethod(words :String, age :Int, values: Double) -> String
{
    var combinedString :String = ""
    
    combinedString = words + " \(age) \(values) "
    
    return combinedString
}

print(multiParameterMethod("Hello", 16, 5.778))
//print(multiParameterMethod("Hello", age: 6, values: 30.1)) for Swift 2.1+