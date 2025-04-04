# Рассмотрение 1 случая

using DifferentialEquations


function lorenz!(du, u, p, t)
    a = p 
    du[1] = u[2]
    du[2] = -a*u[1]
end

const x = 1.7
const y = -0.2
u0 = [x, y]

p = (1.7)
tspan = (0.0, 59.0)

prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots; gr()
# Решение системы
plot(sol)
savefig("lab04-julia-1.png")

# Фазовый портрет

plot(sol, vars=(2,1))
savefig("lab04-julia-1-gh.png")

# Рассмотрение 2 случая

using DifferentialEquations


function lorenz!(du, u, p, t)
    a, b = p 
    du[1] = u[2]
    du[2] = -a*du[1] - b*u[1]
end

const x = 1.7
const y = -0.2
u0 = [x, y]

p = (1.7, 1.7)
tspan = (0.0, 59.0)

prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots; gr()
# Решение системы
plot(sol)
savefig("lab04-julia-2.png")

# Фазовый портрет

plot(sol, vars=(2,1))
savefig("lab04-julia-2-gh.png")

# Рассмотрение 3 случая

using DifferentialEquations


function lorenz!(du, u, p, t)
    a, b = p 
    du[1] = u[2]
    du[2] = -a*du[1] - b*u[1] + 0.7*cos(2.7*t)
end

const x = 1.7
const y = -0.2
u0 = [x, y]

p = (2, 1.7)
tspan = (0.0, 59.0)

prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots; gr()
# Решение системы
plot(sol)
savefig("lab04-julia-3.png")

# Фазовый портрет

plot(sol, vars=(2,1))
savefig("lab04-julia-3-gh.png")