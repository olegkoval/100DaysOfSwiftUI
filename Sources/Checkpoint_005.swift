import Foundation

/*
 Your input is this:

 let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 
 Your job is to:
 - Filter out any numbers that are even
 - Sort the array in ascending order
 - Map them to strings in the format “7 is a lucky number”
 - Print the resulting array, one item per line
 */
public func Checkpoint_005() {
    print("Checkpoint #5")
    
    let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
    let luckyNumbersFinal = luckyNumbers.filter({a in
        !a.isMultiple(of: 2)
    }).sorted(by: {
        a,b in a < b
    }).map({
        a in "\(a) is a lucky number"
    })
    
    for elm in luckyNumbersFinal {
        print(elm)
    }
    
    print("")
}
