# Swiftener
Collection of extensions, operators and utilities to add syntactic sugar to Swift (swift's sweetener)

## Documentation

Work in progress...

### Array

    // Concatenation
    1 ++ [2, 3]             // [1, 2, 3]
    [1, 2] ++ [3, 4]        // [1, 2, 3, 4]
    [1, 2] ++ 3 ++ [4, 5]   // [1, 2, 3, 4, 5]

    // Pattern matching
    let array = [1, 2]
    switch ([]) {
    case []:
    case [1]:
    case [1, 2]:        // yep, found!
    }

    // Utilities
    [1, 2, 3].head  //= 1
    [1, 2, 3].tail  //= [2, 3]
    [1, 2, 3].split //= ([1], [2, 3])

### String

    // Subscript
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let character: Character  = alphabet[1]      //= "B"
    let alphabetRange: String = alphabet[1..<4]  //= "BCD"

## Integration

Since Cocoapods doesn't fully support Swift's frameworks [just yet](https://github.com/CocoaPods/CocoaPods/issues/2272), the best way to use Swiftener at the moment is probably adding it as a submodule.  
Drag and drop the Swiftener Xcode project into yours and then add the Swiftener framework to the "Link Binaries With Libraries" build phase.

## Tests

Tests are written with [Quick](https://github.com/modocache/Quick).

## Contributing

Tests are a must :point_left:

## Contact

Marco Sero

- http://www.marcosero.com
- http://twitter.com/marcosero 
- marco@marcosero.com
