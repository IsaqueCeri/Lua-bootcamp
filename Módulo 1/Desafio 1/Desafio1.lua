local cardName = "Kuriboh"
local element = "Dark"
local stars = "⭐"
local imagem = "Imagem Aqui"
local type = "[FIEND / EFFECT]" 
local description = "|No turno do seu oponente,     |\n|na etapa de cálculo de dano,   |\n|você pode descartar essa carta |\n|e você não toma dano de batalha| \n|nesse combate                  | \n|(Isto é um efeito rápido)"
local attack = 5
local defense = 3
local externalBorderCard <const> = "================================="
local internalBorderCard <const> = "---------------------------------"

local function getProgressBar (attribute)
    local result = ""
    local fullChar = "⬜"
    local emptyChar = "⬛"
    
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else 
            result = result .. emptyChar
        end
    end
    return result
end

os.execute("chcp 65001")
print(externalBorderCard)
print(internalBorderCard)
print("| |   " .. cardName .. "          ".. element .."   | |" )
print(internalBorderCard)
print("|                            " .. stars .. " |")
print(internalBorderCard)
print("| | " .. imagem .. "               | |")
print("| | " .. imagem .. "               | |")
print("| | " .. imagem .. "               | |")
print("| | " .. imagem .. "               | |")
print("| | " .. imagem .. "               | |")
print(internalBorderCard)
print("|" .. type .. "               |")
print("|" .. description .. "      |")
print(internalBorderCard)
print("| Ataque: " .. getProgressBar(attack) .. "  |")
print("| Defesa: " .. getProgressBar(defense) .. "  |")
print(internalBorderCard)
print(externalBorderCard)