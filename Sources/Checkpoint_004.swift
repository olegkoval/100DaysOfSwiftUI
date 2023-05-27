import Foundation

/*
 The challenge is this: write a function that accepts an integer from 1 through 10,000,
 and returns the integer square root of that number. That sounds easy, but there are some catches:

 - You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 - If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 - You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 - If you can’t find the square root, throw a “no root” error.
 */

public func Checkpoint_004(_ number: Int) {
    print("Checkpoint #4")

    do {
        let root = try MySqrt(number)
        print("Root of \(number) is \(root).")
    } catch MyError.outOfBounds {
        print("Out of bounds. Please enter number between 1 and 10 000.")
    } catch {
        print("Number \(number) does not have a root.")
    }

    
    print("")
}

enum MyError: Error {
    case outOfBounds, noRoot
}

func MySqrt(_ number: Int) throws -> Int {
    if (number < 1 || number > 10_000) {
        throw MyError.outOfBounds
    }
    
    // sqrt of 10_000 is 100, so, we shoul brute force just from 1 to 100
    for i in 1...100 {
        if (i * i) == number {
            return i
        }
    }
    
    throw MyError.noRoot
}
