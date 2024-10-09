--- Estudando variaveis e seus tipos


local name <const> = "Isaque" --String  <const>-> variavel constante, nao pode ser alterada, apenas para variaveis locais
local year <const> = 2023 -- Number
local add = 5 -- Number
local myBoolean = true --Boolean



print(name)
print(year)
print(year + add)
print(myBoolean)


print(type(year)) --print(type(info)) --> Traz o tipo da informacao contida na variavel.



--[[ 
tipos de digitacao:
variavel com o nome separado por underline eu_to_tipo_assim = snake_case
Variavel com corcunda em maiusculo isRun - camelCase
Variavel com inicio maiusculo + camel IsRun = PascalCase
Variavel toda maiuscula mais snake EU_TO_TIPO_ASSIM = SCREAMING_SNAKE_CASE   
]]

---Estudando comentarios

-- Comentario simples
--- Comentario de documentacao de codigo
--[[ Comentario de blocos multilinhas]]

---Estudando operadores aritmeticos


local health = 20
print(health + 10)

local health  = 20 + 10
print(health)

print(health % 1)  ---Modulo calcula o resto da divisao de health pelo numero do modulo 
print(health % 2)
print(health % 3)
print(health % 4)
print(health % 5)
print(health % 6)

--- Operadores:
--- + Adicao
--- - Subtracao
--- / Divisao
--- * Multiplicacao
--- ^ Elevado
--- % Modulo

---  Estudando condicionais
local health = 20
local maxHealth = 20

local isHealthFull = health == maxHealth

local healthPorcentage = health / maxHealth
local isHealthCritical = healthPorcentage <=0.25

print(isHealthFull)

if (isHealthCritical) then
    print("A vida esta critica! cuidado!")
else
    print("Esta tudo bem!")
end