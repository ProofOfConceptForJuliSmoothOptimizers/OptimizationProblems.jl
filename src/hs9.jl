#   Hock and Schittkowski problem number 9.
#
#   Source:
#   Problem 9 in
#   W. Hock and K. Schittkowski,
#   Test examples for nonlinear programming codes,
#   Lectures Notes in Economics and Mathematical Systems 187,
#   Springer Verlag, Heidelberg, 1981.
#
#   classification OLR2-AN-2-1
#
#   A. Cebola, Curitiba/PR, Brazil , 10/2016.

export hs9

'HS9 Model'

function hs9(args...)

    nlp = Model()
    x0 = [2.0, 1.0]

    pi = 3.14159;

    @variable(nlp, x[i=1:2], start=x0[i])

    @NLobjective(
      nlp,
      Min,
      sin(pi * x[1] / 12) * cos(pi * x[2] / 16)
    )

    @NLconstraint(
      nlp,
      constr1,
      4*x[1] - 3*x[2] == 0
    )

    return nlp
end