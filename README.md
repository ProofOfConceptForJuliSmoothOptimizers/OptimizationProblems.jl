# OptimizationProblems

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3672094.svg)](https://doi.org/10.5281/zenodo.3672094)
[![CI](https://github.com/JuliaSmoothOptimizers/OptimizationProblems.jl/workflows/CI/badge.svg?branch=master)](https://github.com/JuliaSmoothOptimizers/OptimizationProblems.jl/actions)
[![Build Status](https://api.cirrus-ci.com/github/JuliaSmoothOptimizers/OptimizationProblems.jl.svg)](https://cirrus-ci.com/github/JuliaSmoothOptimizers/OptimizationProblems.jl)
[![codecov](https://codecov.io/gh/JuliaSmoothOptimizers/OptimizationProblems.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaSmoothOptimizers/OptimizationProblems.jl)

A collection of optimization problems in
[JuMP](https://github.com/JuliaOpt/JuMP.jl) syntax.

## Installing

OptimizationProblems can be installed and tested through the Julia package manager:

```julia
julia> ]
pkg> add OptimizationProblems
pkg> test OptimizationProblems
```

You can obtain the list of problems currently defined with
`names(OptimizationProblems)`. The first symbol in the list is
`:OptimizationProblems` itself&ndash;the name of the module.

Currently, only a few unconstrained problems are implemented. Some are
available in variable size.

This module is particularly useful in conjunction with
[NLPModels](https://github.com/JuliaSmoothOptimizers/NLPModels.jl) to facilitate evaluating
objective, constraints and their derivatives.

## Contributing

Please open pull requests to submit new problems! When submitting a problem,
please pay particular attention to the documentation. We would like to gather
as much information as possible on the provenance of problems.

## How to cite

If you use OptimizationProblems.jl in your work, please cite using the format given in [CITATION.bib](CITATION.bib).
