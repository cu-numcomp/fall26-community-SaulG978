using Roots

# Our function and derivative
f(x) = x^2 - 2
df(x) = 2*x

# Newton's method
newton = find_zero((f, df), 1.0, Roots.Newton())

# Bisection method
bisection = find_zero(f, (1.0, 2.0), Bisection())

# Compare results
actual = sqrt(2)

println("Actual root: ", actual)
println("Newton's method: ", newton)
println("Bisection method: ", bisection)

println("Newton error: ", abs(newton - actual))
println("Bisection error: ", abs(bisection - actual))