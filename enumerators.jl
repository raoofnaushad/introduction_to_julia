using Statistics
using Printf

@enum Color begin
    red = 1
    green = 2
    blue = 3
end

favColor = green::Color
println(favColor)