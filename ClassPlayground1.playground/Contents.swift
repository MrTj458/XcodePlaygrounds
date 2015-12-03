//: Playground - noun: a place where people can play

import Cocoa
let PLAYGROUND :String = "Learng swift" //Expcit decloration of a String
var myWords = PLAYGROUND //Implicitly a String
myWords = "new stuff"
print(myWords)
print(PLAYGROUND)
myWords = "7"
myWords = "other words"

var otherVariable = 7
otherVariable = Int(3.452) //Casting a Double as an Int

/*
Java:
int [] myNums = new int[4];
myNums[0] = 3
Swift:
*/
var myNums = [Int]()

myNums.append(3)
myNums.append(45)
myNums.append(34)
myNums.append(1234)
print(myNums)

/*
ArrayList - Java
ArrayList<String> myWords new ArrayList<String>();
myWords.add("Stuff");
*/

var myWordsList = [String]()
myWordsList.insert("Stuff", atIndex: 0)

/*
Bigness = name.length()
*/
print(myNums.count)
print(myWordsList.count)

/*
Java - for each or enhanced for

for(Type variable : structure)
{...}

for(int myNum : myNums)
{...}

Swift - the for in loop

for variable in structure
{...}
*/

for myNum in myNums
{
    print(myNum)
}

for(var myNumber = 0; myNumber < myNums.count; myNumber+=2)
{
    print(myNumber)
}

myNums[0] = 98
print(myNums)
//Must append before you can use that slot.
myNums[4] = 341
print(myNums) //Must append first!