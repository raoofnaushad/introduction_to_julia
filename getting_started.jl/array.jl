using Printf
using Statistics


a1 = zeros(Int32, 2, 2)
a2 = Array{Int32}(undef, 5)
a3 = Float64[]

a4 = [1, 2, 3]
println(a4[1])
println(a4[end])
println(5 in a4)
println(findfirst(isequal(2), a4))
f(a) = (a >= 2) ? true : false
println(findall(f, a4))
println(count(f, a4))

println("-----")
## Some useful functions with Array
a4 = [1, 2, 3]
println(size(a4))
println(length(a4))
println(sum(a4))
splice!(a4, 2:1, [8,9])
println(a4)
splice!(a4, 2:3)
println(maximum(a4))
println(minimum(a4))
println(a4 * 2)
println(a4)


## Some Advanced Array Operations

a5 = [1, 3.14, "Hello"]

## functions as Arrays
a6 = [sin, cos, tan]
for n in a6
    println(n(0))
end

## Multi Dimensional Array
a7 = [1 2 3; 4 5 6]
for n = 1:2, m = 1:3
    @printf("%d ", a7[n, m])
end
println()


println(a7[:, 2])
println(a7[2, :])

## Ranges of arrays
a8 = collect(1:5)
a9 = collect(2:2:10)

for n in a9 print(n) end
println()

## Array with comprehensions
a10 = [n^2 for n in 1:5]
println(a10)


## Adding val to arrays
push!(a10, 36)

a11 = [n*m for n in 1:5, m in 1:5]
println(a11)

## Create random variables
a12 = rand(0:9, 5, 5)
for n = 1:5
    for m = 1:5
        print(a12[n, m])
    end
    println()
end