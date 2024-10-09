--[[
Função sem parâmetro e sem retorno
Função com parâmetro e sem retorno
Função sem parâmetro e com retorno /// n teve
Função com parâmetro e com retorno
]]

local function getDate() --- sem parâmetro e sem retorno
    return os.date()
 end


local function sayHello() --- Sem parâmetro com retorno
    print("Hello user! welcome!")
end

local function convertKilometersToMiles(km) ---Com paramêtro e retorno
    local miles = km / 1.609
    return math.floor(miles)
end

os.execute("chcp 65001")
sayHello()
local kph = 50
local mph = convertKilometersToMiles(kph)
print("O vento está com uma velocidade de " .. mph .. "MPH")
print(getDate())

---Função com múltiplos parâmetros ou retornos

local function convertMany (km1, km2, km3)
    local m1 = convertKilometersToMiles(km1)
    local m2 = convertKilometersToMiles(km2)
    local m3 = convertKilometersToMiles(km3)

    return m1, m2, m3
end

local a, b, c = convertMany(60, 80, 120)
print(a)
print(b)
print(c)
print(a, b, c)

---Parâmetros opcionais

local function digaHello(name)

    name = name or "stranger"
    --if name == nil then
      --  name = "stranger"
    --end
     
    print("Hello " .. name .. "! welcome!")
end

digaHello()
digaHello("ZAC")