# Hock and Schittkowski problem number 97.
#
#   Source:
#   Problem 97 in
#   W. Hock and K. Schittkowski,
#   Test examples for nonlinear programming codes,
#   Lectures Notes in Economics and Mathematical Systems 187,
#   Springer Verlag, Heidelberg, 1981.
#   
#   classification PPR-AN-6-4
#
# A. Montoison, Montreal, 05/2018.

export hs97

"HS97 model"
function hs97(args...)
  nlp = Model()

  x0 = [0,0,0,0,0,0]
  @variable(nlp, x[i=1:6], start=x0[i])

  b = [32.97,25.12,-29.08,-78.02]
  @NLconstraint(nlp, 17.1*x[1] + 38.2*x[2] + 204.2*x[3] + 212.3*x[4] + 623.4*x[5] + 1495.5*x[6]
                     -169*x[1]*x[3] - 3580*x[3]*x[5] - 3810*x[4]*x[5] - 18500*x[4]*x[6]
                     - 24300*x[5]*x[6] >= b[1])
  @NLconstraint(nlp, 17.9*x[1] + 36.8*x[2] + 113.9*x[3] + 169.7*x[4] +337.8*x[5] + 1385.2*x[6]
                     - 139*x[1]*x[3] -2450*x[4]*x[5] - 16600*x[4]*x[6] - 17200*x[5]*x[6] >= b[2])
  @NLconstraint(nlp, -273*x[2] - 70*x[4] - 819*x[5] + 26000*x[4]*x[5] >= b[3])
  @NLconstraint(nlp, 159.9*x[1] - 311*x[2] + 587*x[4] + 391*x[5] + 2198*x[6] - 14000*x[1]*x[6] >= b[4])

  @constraint(nlp, 0 <= x[1] <= 0.31)
  @constraint(nlp, 0 <= x[2] <= 0.046)
  @constraint(nlp, 0 <= x[3] <= 0.068)
  @constraint(nlp, 0 <= x[4] <= 0.042)
  @constraint(nlp, 0 <= x[5] <= 0.028)
  @constraint(nlp, 0 <= x[6] <= 0.0134)    

  @NLobjective(
    nlp,
    Min,
    4.3*x[1] + 31.8*x[2] + 63.3*x[3] + 15.8*x[4] + 68.5*x[5] + 4.7*x[6]
    )

  return nlp
end