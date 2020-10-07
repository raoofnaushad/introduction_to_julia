using Statistics
using Printf


struct Customer
    name :: String
    balance :: Float32
    id :: Int
end

bob = Customer("Bob Smith", 10.50, 123)
println(bob.name)

## Structs are mutable it cannot be changed

# bob.name = "Sue" 
# Not possible


mutable struct Customer1
    name :: String
    balance :: Float32
    id :: Int
end

bob = Customer1("Bob Smith", 10.50, 123)
println(bob.name)

bob.name = "Sue" 
println(bob.name)