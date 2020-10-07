using Printf
using Statistics

random_vect = rand(10)
println(random_vect)
println("-----------------------------------")

function extend(v, i)
	if i>=1 && i<=length(v)
		return v[i]
	elseif i < 1
		return v[1]
	else
		return v[length(v)]
	end
end



function convolve_vector(v, k)
	n_k = length(k)
    n_v = length(v)
	new_v = fill(1.0, length(v))
	l = (length(k)-1) ÷ 2

    for i in range(1, length=length(v))
		res = 0
		for j = -l:l
			res += k[(trunc(Int, (n_k/2+j+1)))] * extend(v, i+j)
		end
		new_v[i] = res
	end
	return new_v
end




test_convolution = let
	v = [1, 10, 100, 1000, 10000]
	# k = [0.35, 0.25, 0.5, 0.1, 1]
	# k = [0, 1, 0]
	k = random_vect
	convolve_vector(v, k)
end

println(test_convolution)
