//: Playground - noun: a place where people can play

import Cocoa

var title = "Using classes in Swift"

//Java version
//public class SomeClass
//{
// decloration
// constrictors
// methods
//}
class PracticeClass
{
    //Decloration section
    //No visibility but must state type
    
    var favoriteFood:String
    var numberOfSkateboards:Int
    var hasBrokenBone:Bool
    
    //Init section
    init()
    {
        favoriteFood = String()
        numberOfSkateboards = Int()
        hasBrokenBone = Bool()
    }
    
    convenience init(hasBrokenBone:Bool)
    {
        self.init()
        self.hasBrokenBone = hasBrokenBone
    }
}

var sampleInstance = PracticeClass()
print(sampleInstance.favoriteFood)
print(sampleInstance.numberOfSkateboards)
print(sampleInstance.hasBrokenBone)
sampleInstance.hasBrokenBone = true
print(sampleInstance.hasBrokenBone)
var otherInstance = PracticeClass(hasBrokenBone: true)
print(otherInstance.hasBrokenBone)