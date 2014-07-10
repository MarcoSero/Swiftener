# Swiftener
Collection of extensions, operators and utilities to add syntactic sugar to Swift (swift's sweetener)

## Documentation

Work in progress...

### Array

Since mutability is bad, all the functions return a new copy of the array. None of them are declared as `mutating`.

#### Concatenation with custom operator

    1 ++ [2, 3]             // [1, 2, 3]
    [1, 2] ++ [3, 4]        // [1, 2, 3, 4]
    [1, 2] ++ 3 ++ [4, 5]   // [1, 2, 3, 4, 5]

#### Pattern matching

    let array = [1, 2]
    switch ([]) {
    case []:
    case [1]:
    case [1, 2]:        // yep, found!
    }

#### Utilities and functional extensions

    [1, 2, 3].head              //= 1
    [1, 2, 3].tail              //= [2, 3]
    [1, 2, 3].last              //= 3
    [1, 2, 3].take(2)           //= [1, 2]
    [1, 2, 3].drop(2)           //= [3]
    [1, 2, 3].split             //= ([1], [2, 3])
    [1, 2, 3].min               //= 1
    [1, 2, 3].max               //= 3
    [1, 2, 2].without(2)        //= [1]
    [1, nil, 3].withoutNil()    //= [1]

    zip([1, 2, 3], ["a", "b", "c"])         //= [(1, "a"), (2, "b"), (3, "c")]
    unzip([(1, "a"), (2, "b"), (3, "c")])   //= ([1, 2, 3], ["a", "b", "c"])

#### Ruby-like Loops

    [1, 2, 3].each { element in println(element) }
    [1, 2, 3].eachWithIndex { i, e in println("element \(e) at index \(i)" }

### String

#### Subscript

    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let character: Character  = alphabet[1]      //= "B"
    let alphabetRange: String = alphabet[1..<4]  //= "BCD"

### Int

#### Loop n times

    3.times { index in println("this will get printed 3 times") }

#### Random generators

    Int.random()                                //= random number in the range 0..INT_MAX
    Int.random(limit: 200)                      //= random number in the range 0..200
    Int.random(leftLimit: 100, rightLimit: 200) //= random number in the range 100..200

## Integration

Since Cocoapods doesn't fully support Swift's frameworks [just yet](https://github.com/CocoaPods/CocoaPods/issues/2272), the best way to use Swiftener at the moment is probably adding it as a submodule.  
Drag and drop Swiftener's Xcode project into yours and then add the Swiftener framework to the "Link Binaries With Libraries" build phase.

## Tests

Tests are written with [Quick](https://github.com/modocache/Quick).

## Contributing

Tests are a must :point_left:

## Contact

Marco Sero

- http://www.marcosero.com
- http://twitter.com/marcosero 
- marco@marcosero.com
