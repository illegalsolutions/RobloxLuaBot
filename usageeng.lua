  
--[[
Made by AtKnSploits and OnlySploits
--]]
-- English version

local reply = {"Hi","Hello"}
local startermessage = {"What's going on"}


Chat.Chatted:Connect(function(plr,msg)
    if msg == "hello" and msg == "Hello" and msg == "hi" and msg == "Hi" then
        if not plr == Player then
            Bot.Chat(tostring(reply[math.random(1,#reply)]))
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

    Bot.Chat(tostring(reply[math.random(1,#reply)]))
    wait(2)
    Bot.Chat(tostring(startermessage[math.random(1,#startermessage)]))
    while wait(13) do
        Bot.jump()
    end 
 Bot.antiafk(true)

jmp()
wlk()
