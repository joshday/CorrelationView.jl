module CorrelationView

export corview

function corview(x::AbstractMatrix, io::IO = STDOUT)
    issymmetric(x) || throw(ArgumentError("Matrix must be symmetric"))
    p = size(x, 1)
    for i in 1:p
        for j in 1:p
            y = x[i, j]
            if j < i
                print_element(io, y)
            elseif i == j
                print(io, "   ")
            else
                print_number(io, y)
            end
            print(io, " ")
        end
        println(io)
    end
end

function intensity(y::Number)
    ay = abs(y)
    if ay > .8
        return "███"
    elseif ay > .6
        return "▓▓▓"
    elseif ay > .4
        return "▒▒▒"
    elseif ay > .2
        return "░░░"
    else
        return "   "
    end
end

function print_element(io::IO, y::Number)
    color = ifelse(y > 0, :blue, :red)
    print_with_color(color, io, intensity(y))
end

function print_number(io::IO, y::Number)
    color = ifelse(y > 0, :blue, :red)
    print_with_color(color, io, @sprintf("%3.0f", y * 100))
end

end # module
