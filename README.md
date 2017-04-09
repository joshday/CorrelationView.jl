# CorrelationView

[![Build Status](https://travis-ci.org/joshday/CorrelationView.jl.svg?branch=master)](https://travis-ci.org/joshday/CorrelationView.jl)

[![Coverage Status](https://coveralls.io/repos/joshday/CorrelationView.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/joshday/CorrelationView.jl?branch=master)

[![codecov.io](http://codecov.io/github/joshday/CorrelationView.jl/coverage.svg?branch=master)](http://codecov.io/github/joshday/CorrelationView.jl?branch=master)


Quick visualizations of correlation matrices in the REPL

```
julia> using Distributions, CorrelationView

julia> d = MvNormal(rand(10), [.7^abs(i-j) for i in 1:10, j in 1:10]);

julia> y = rand(d, 1000);

julia> c = cor(y');

julia> corview(c)
     71  52  38  28  14  12   9   6   3
▓▓▓      71  52  34  16  12  10   8   3
▒▒▒ ▓▓▓      72  45  28  19  15  11   7
░░░ ▒▒▒ ▓▓▓      70  47  33  23  15  16
░░░ ░░░ ▒▒▒ ▓▓▓      70  52  34  25  21
        ░░░ ▒▒▒ ▓▓▓      70  46  34  28
            ░░░ ▒▒▒ ▓▓▓      67  47  35
            ░░░ ░░░ ▒▒▒ ▓▓▓      70  49
                ░░░ ░░░ ▒▒▒ ▓▓▓      69
                ░░░ ░░░ ░░░ ▒▒▒ ▓▓▓
```
