--[[
Made by AtKnSploits and OnlySploits
--]]
-- TURKISH VERSION

local baslangicsaas = {"As","Aleyküm selam","aleyküm selam","as"}
local baslangic2 = {"nabıyonuz","naber","nasılsınız","kız var mı"}


Chat.Chatted:Connect(function(plr,msg)
    if msg == "sa" or msg == "SA" or msg == "Selamun Aleykum" or msg == "Selamün Aleykum" or msg == "Selamun Aleyküm" then
        if not plr == Player then
            Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangicsaas)]))
        end
    end
end)

function jmp()
    while wait(13) do
        Bot.jump()
    end
end

function wlk()
    while wait(30) do
        Bot.walkto(math.random(-900000000,900000000),math.random(-900000000,900000000),math.random(-900000000,900000000)) -- RANDOM WALK
    end
end

    Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangicsaas)]))
    wait(2)
    Bot.Chat(tostring(baslangic2[math.random(1,#baslangic2)]))
     
 Bot.antiafk(true)

jmp()
wlk()
