using Statistics
using Printf

abstract type  Animal end


struct Dog <: Animal
    name :: String
    bark :: String
end

struct Cat <: Animal
    name :: String
    meow :: String
end


bowser = Dog("Bowser", "Ruff")
muffin = Cat("Muffin", "Meow")


function makeSound(animal :: Dog)
    println("$(animal.name) says $(animal.bark)")
end

function makeSound(animal :: Cat)
    println("$(animal.name) says $(animal.meow)")
end

makeSound(bowser)
makeSound(muffin)