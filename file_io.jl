using Statistics
using Printf


open("random2.txt", "w") do file
    write(file, "Here is som random text\n It is great\n")
end


open("random2.txt") do file
    data = read(file, String)
    println(data)
end


open("random2.txt") do file
    for line in eachline(file)
        println(line)
    end
end
