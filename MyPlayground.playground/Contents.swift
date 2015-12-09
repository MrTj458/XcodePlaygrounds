//: Playground - noun: a place where people can play

import Cocoa

var doCount :Bool = false
var currentNum = 0

var namesList = ["Thomas", "Trevor", "Adam", "Ethan"]

for name in namesList
{
    println("Hello, \(name)")
}

for var index = 0; index <= 10; index++
{
    println(index)
}

func countStuff()
{
    println(currentNum)
    currentNum++
}

while(doCount)
{
    countStuff()
}
