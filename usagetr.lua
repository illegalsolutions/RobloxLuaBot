--[[
Made by AtKnSploits and OnlySploits
--]]
-- TURKISH VERSION

local baslangicsaas = {"As","Aleyküm selam","aleyküm selam","as"}
local baslangic2 = {"nabıyonuz","naber","nasılsınız","kız var mı"}


Chat.Chatted:Connect(function(plr,msg)
    if msg == "sa" and msg == "SA" and msg == "Selamun Aleykum" and msg == "Selamün Aleykum" and msg == "Selamun Aleyküm" then
        if not plr == Player then
            Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangicsaas)]))
        end
    end
end)



    Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangicsaas)]))
    wait(2)
    Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangic2)]))
    while wait(13) do
        Bot.jump()
    end 
 Bot.antiafk(true)

