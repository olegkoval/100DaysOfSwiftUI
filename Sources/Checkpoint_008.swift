import Foundation

/*
 Your challenge is this: make a protocol that describes a building, adding various properties and methods,
 then create two structs, "House" and "Office", that conform to it.
 
 Your protocol should require the following:
 - A property storing how many rooms it has.
 - A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
 - A property storing the name of the estate agent responsible for selling the building.
 - A method for printing the sales summary of the building, describing what it is along with its other properties.
 */
public func Checkpoint_008() {
    //
}

protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var estateAgent: String { get set }
    
    func printSummary() -> Void
}

struct House: Building {
    let rooms: Int
    var cost: Int
    var estateAgent: String
    
    public func printSummary() -> Void {
        print("House have \(self.rooms) rooms, cost $\(self.cost), contact \(self.estateAgent)")
    }
}

struct Office: Building {
    let rooms: Int
    var cost: Int
    var estateAgent: String
    
    public func printSummary() -> Void {
        print("Office have \(self.rooms) rooms, cost $\(self.cost), contact \(self.estateAgent)")
    }
}
