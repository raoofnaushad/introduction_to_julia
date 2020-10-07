using Statistics
using Printf

## Simple Function
getSum(x, y) = x + y
x, y = 1, 2
@printf("%d + %d = %d\n", x, y, getSum(x,y))


## Another Function
function canIVote(age=16)
    if age > 18
        println("Can Vote")
    else
        println("Can't Vote")
    end
end
canIVote(22)


## Pass by value not by reference
v1 = 5
function changeV1(v1)
    v1 = 10
    return v1
end
println(changeV1(v1))
println(v1) 

println("------")
## Pass by reference
v1 = 5
function changeV1()
    global v1 = 10
    return v1
end
println(changeV1())
println(v1) 

println("********")
## Not fixed number of arguments
function getSum2(args...)
    sum = 0
    for a in args
        sum += a
    end
    println(sum)
end
getSum2(1, 2, 3, 4, 5)


## Return 
function  next2(val)
    return (val+1, val+2)
end
println(next2(100))

## Function inside function
function makeMultiplier(num)
    return function(x) return x * num end
end
mult3 = makeMultiplier(3)
println(mult3(6))

## Function overriding
println("-------------------------------------------")
## Specifying datatypes
function getSum3(num1::Number, num2::Number)
    return num1 + num2
end

## Specifying datatypes
function getSum3(num1::String, num2::String)
    return parse(Int32, num1) + parse(Int32, num2)
end


println("5 + 4 =", getSum3(5, 4))
println("5 + 4 =", getSum3("5", "4"))
