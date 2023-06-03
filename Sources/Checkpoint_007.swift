import Foundation

/*
 Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat
 as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

 But there’s more:
 - The Animal class should have a legs integer property that tracks how many legs the animal has.
 - The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses
   should print something slightly different.
 - The Cat class should have a matching speak() method, again with each subclass printing something different.
 - The Cat class should have an isTame Boolean property, provided using an initializer.
 */
public func Checkpoint_007() {
    let corgi = Dog(legs: 4, say: "Woof-woof")
    let poodle = Dog(legs: 4, say: "Wooif-wooif")
    let persian = Cat(legs: 4, say: "Meow-meow", isTame: false)
    let lion = Cat(legs: 4, say: "Meowi-meowi", isTame: true)
    lion.setIsTame(false)
    
    corgi.speak()
    poodle.speak()
    persian.speak()
    lion.speak()
}

class Animal {
    private(set) var legs: Int
    private(set) var say: String
    
    init(legs: Int, say: String) {
        self.legs = legs
        self.say = say
    }
}

final class Dog: Animal {
    public func speak() -> Void {
        print("Dog says \(self.say).")
    }
}

final class Cat: Animal {
    private(set) var isTame: Bool
    
    init(legs: Int, say: String, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs, say: say)
    }
    
    public func speak() -> Void {
        print("Cat says \(self.say). Is Tame: \(self.isTame)")
    }
    
    public func setIsTame(_ isTame: Bool) -> Void {
        self.isTame = isTame
    }
}
