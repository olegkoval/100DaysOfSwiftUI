import Foundation

/*
 Create a struct to store information about a car, including its model, number of seats, and current gear,
 then add a method to change gears up or down. Have a think about variables and access control: what data
 should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing
 method validate its input somehow?
 */
public func Checkpoint_006() {
    var mini = Car(model: "Mini Cooper", numberOfSits: 4)

    do {
        try mini.setGear(11)
        
        mini.printCarInfo()
    }
    catch ValidationErrors.wrongGear {
        print("Gear is wrong. Should be from 0 through 11.")
    }
    catch {
        print("Unknown error. Please contact support.")
    }
}

enum ValidationErrors: Error {
    case wrongGear
}

/*
 Gears from 0 through 11:
 0 - neutral
 11 - reverse
 1 .. 10 - regular gears
 */
struct Car {
    let model: String
    let numberOfSits: Int
    private(set) var currentGear: Int = 0
    
    init(model: String, numberOfSits: Int) {
        self.model = model
        
        if (Car.isValidNumberOfSits(numberOfSits)) {
            self.numberOfSits = numberOfSits
        }
        else {
            self.numberOfSits = 1
        }
    }
    
    public func printCarInfo() -> Void {
        print("Model: \(self.model); Number of sits: \(self.numberOfSits); Current gear: \(self.currentGear)")
    }
    
    mutating public func setGear(_ gear: Int) throws -> Void {
        if (self.isValidGear(gear)) {
            self.currentGear = gear
        }
        else {
            throw ValidationErrors.wrongGear
        }
    }
    
    /*
     Gear should be in the range from 0 through 11
     */
    private func isValidGear(_ gear: Int) -> Bool {
        return gear >= 0 && gear <= 11 ? true : false
    }
    
    /*
     Car should have min 1 sit (sport cars) and max 9 (1 driver + 8 passengers) otherwise it's a bus
     */
    private static func isValidNumberOfSits(_ sits: Int) -> Bool {
        return sits > 0 && sits < 10 ? true : false
    }
}
