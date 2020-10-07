using Statistics
using Printf

## Map function
v2 = map(x -> x * x, [1,2,3])
println(v2)

v3 = map((x,y) -> x+y, [1,2], [3,4])
println(v3)

v4 = reduce(+, 1:100)
println(v4)


## Longest word in sentence
sentence = "This is a string written by Raoof Naushad"
sArray = split(sentence)
longest = reduce((x, y) -> length(x) > length(y) ? x : y, sArray)
println(longest)