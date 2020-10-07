using Printf
using Statistics



st1 = Set(["Jim", "Pam", "Jim"])
println(st1)

push!(st1, "Michael")
println(in("Dwight", st1))
st2 = Set(["Stanley", "Meredith"])
println(union(st1, st2))

println(intersect(st1, st2))
println(setdiff(st1, st2))