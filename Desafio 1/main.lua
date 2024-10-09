local cardName = "Kuriboh"
local element = "Dark"
local stars = "⭐"
local type = "[FIEND / EFFECT]" 
local description = "|No turno do seu oponente,     |\n|na etapa de cálculo de dano,   |\n|você pode descartar essa carta |\n|e você não toma dano de batalha| \n|nesse combate                  | \n|(Isto é um efeito rápido)"
local attack = 5
local defense = 3
local externalBorderCard  = "================================="
local internalBorderCard  = "---------------------------------"

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

function love.load ()
    imagem = love.graphics.newImage("kuriboh.png")
end

function love.draw()
    love.graphics.draw(imagem, 50, 50) -- Desenha a imagem na posição (100, 100)
end

function love.draw()
    love.graphics.print(externalBorderCard, 1, 10)
    love.graphics.print(internalBorderCard, 1, 20)
    love.graphics.print("| |   " .. cardName .. "          ".. element .."   | |", 1, 30)
    love.graphics.print(internalBorderCard, 1, 40)
    love.graphics.print("|                            " .. stars .. " |", 1, 50)
    love.graphics.print(internalBorderCard, 1, 60)
    love.graphics.draw(imagem, 1, 70, 50, justify)
    love.graphics.print(internalBorderCard, 1, 80)
    love.graphics.print("|" .. type .. "               |", 1, 90)
    love.graphics.printf("|" .. description .. "      |", 1, 100, 100, justify)
    love.graphics.printf(internalBorderCard, 1, 110, 100, justify)
    love.graphics.print("| Ataque: " .. getProgressBar(attack) .. "  |", 1, 120)
    love.graphics.print("| Defesa: " .. getProgressBar(defense) .. "  |", 1, 130)
    love.graphics.print(internalBorderCard, 1, 140)
    love.graphics.print(externalBorderCard, 1, 150)
    end



