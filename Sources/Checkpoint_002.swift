import Foundation

/*
 This time the challenge is to create an array of strings, then write some code that prints
 the number of items in the array and also the number of unique items in the array.
 */
public func Checkpoint_002() {
    print("Checkpoint #2")
    
    let myArray = ["a", "b", "c", "d", "c"]
    print("Array contains \(myArray.count) items")
    print("Array contains \(Set(myArray).count) unique items")
    
    print("")
}
