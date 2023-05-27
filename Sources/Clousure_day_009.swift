import Foundation

/*
 Playing with clousures
 Custom sort function/clousure
 */
public func ClousureDay009() {
    print("Clousures Day #9")
    
    let teamUsers = ["Helg", "Tom", "Han", "Bram", "David", "Sean"]
    let teamUsersSortedWithCaptain = teamUsers.sorted(by: {(name1: String, name2: String) -> Bool  in
        if name1 == "Sean" {
            return true;
        }
        if name2 == "Sean" {
            return false
        }
        
        return name1 < name2
    })
    
    print(teamUsersSortedWithCaptain)
    
    print("")
}
