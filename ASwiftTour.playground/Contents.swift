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

//Enumerations

enum Rank: Int
{
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String
    {
        switch self
        {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 3)
{
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit
{
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String
    {
        switch self
        {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartDescription = hearts.simpleDescription()


//Generics

func repeatItem<Item>(item: Item, numberOfTimes: Int) -> [Item]
{
    var result = [Item]()
    for _ in 0..<numberOfTimes
    {
        result.append(item)
    }
    return result
}

repeatItem("Knock", numberOfTimes: 4)

enum OptionalValue<Wrapped>
{
    case None
    case Some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some (100)

func anyCommonElements <T: SequenceType, U: SequenceType where T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, _ rhs: U) -> Bool
{
    for lhsItem in lhs
    {
        for rhsItem in rhs
        {
            if lhsItem == rhsItem
            {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])
