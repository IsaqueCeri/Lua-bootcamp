--[[OBJETIVO:

Ola NOME

A previsao para o dia de hoje é previsao
A temperatura ira variar entre MIN C e MAX C (MIN e MAX Fahrenheit)

]]
os.execute("chcp 65001")
local name = "Isaque"
local forecast = "ensolarado."
local min = 22
local max = 35

local function convertCelsiusToFahrenheit(c)

    local f = (c * 9/5) + 32
    return f
end

local minF = convertCelsiusToFahrenheit(min)
local maxF = convertCelsiusToFahrenheit(max)

print(string.format("Olá %s", name))
print()
print(string.format("A previsão para hoje é um dia %s", forecast))
print(minF, maxF)
print(string.format("A temperatura irá variar entre %d°C e %d°C. (%.1f F e %f F)", min, max, minF, maxF))