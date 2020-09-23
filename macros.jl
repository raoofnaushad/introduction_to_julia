using Statistics
using Printf


## Macros generate code before a program is run
macro doMore(n, exp)
    quote
        for i = 1:$(esc(n))
            $(esc(exp))
        end
    end
end


@doMore(2, println("Hello"))



macro doWhile(exp)
    @assert exp.head == :while
    esc(quote
    $(exp.args[2])
    $exp
end)
end

z = 0
@doWhile while z < 10
    global z += 1
    println(z)
end