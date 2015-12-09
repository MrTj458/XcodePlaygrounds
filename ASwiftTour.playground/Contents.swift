//: Playground - noun: a place where people can play

import Cocoa

var title = "Objects and Classes"

//Making a Class
class NamedShape
{
    var numberOfSides = 0
    var name: String
    
    init(name: String)
    {
        self.name = name
    }
    
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = NamedShape(name:"Shape")
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

//Making a child class of NamedShape
class Square: NamedShape
{
    var sideLength: Double
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    var perimeter: Double
    {
        get
        {
            return sideLength * 4
        }
        set
        {
            sideLength = newValue / 4.0
        }
    }
    
    var area: Double
    {
        get
        {
            return sideLength * sideLength
        }
        set
        {
            sideLength = sqrt(newValue)
        }
    }

    
    
    //Override a function of the parent.
    override func simpleDescription() -> String
    {
        return "A square with sides of length \(sideLength)."
    }
}

var square = Square(sideLength: 5.2, name: "Mah square")
square.simpleDescription()

square.numberOfSides
square.sideLength = 16
square.sideLength
square.area
square.perimeter