using DifferentialEquations, Plots

x0 = 25000
y0 = 39000

a = 0.441
b = 0.773
c = 0.55
h = 0.664

P(t) = sin(2 * t) + 1
Q(t) = cos(2 * t) + 1

u0 = [x0, y0]
p = (a, b, c, h)
T = [0. 2]

function F(du, u, p, t)
    a, b, c, h = p 
    du[1] = -a * u[1] - b * u[2] + P(t)
    du[2] = -c * u[1] - h * u[2] + Q(t)
end

# Решение задачи

prob = ODEProblem(F, u0, T, p)
sol = solve(prob)

# Построение графика

plot(sol,
    label=["Армия X" "Армия Y"],
    xlabel="Время",
    ylabel="Численность войск",
    title="Рассмотрение 1 случая",
    linewidth=2
    )

savefig("julia-1.png")