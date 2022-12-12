/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable {
//var description: String
    var name: String
    var age: Int
    var description: String {
        return "Name: \(name) \nAge: \(age)"
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
static func == (h1: Human, h2: Human) -> Bool {
return h1.name == h2.name && h1.age == h2.age

}
static func < (h1: Human, h2: Human) -> Bool {
return h1.age < h2.age
}
}

let h0 = Human(name: "Dave" , age:  30)
let h1 = Human(name: "Sarah", age: 25)
let h2 = Human(name: "Johnson", age: 34)
print(h0)

print(h1 == h2)

var humans:[Human] = [h0, h1, h2]
var sortedHuman = humans.sorted(by: <)

for h in sortedHuman
{
    print(h)
}

/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */


/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */


/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */



import Foundation


//: page 1 of 2  |  [Next: App Exercise - Printable Workouts](@next)
