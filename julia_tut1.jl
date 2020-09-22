# Importing Libraries
using Printf
using Statistics

## Assigning values
s = 0
s = "Dog"
s = true
s = false

## Printing
println(s)

## Precision of floating point is upto 14 decimel points
bF = 1.111111111111111
println(bF + 0.11111111111111111111)
## Can use BigFloat and BigInt


## Type casting

## Converting Int to char
c2 = Char(120)
println(c2)

## Converting float to Int
i1 = UInt8(trunc(3.14))
println(i1)

## Converting string to float
f1 = parse(Float64, "1")
println(f1)

## Converting string to Int8
i2 = parse(Int8, "1")
println(i2)


s1 = "Just some random words\n"
println(length(s1))

println(s1[1])
println(s1[end])
println(s1[1:4])
s2 = string("Raoof", " Naushad")
println(s2)
println("Accubits" * " Awesome")
i3 = 2
i4 = 3
println("$i3 + $i4 = $(i3 + i4)")


s3 = """
I 
have many
lines here
"""
print(s3)