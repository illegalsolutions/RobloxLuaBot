function chat(message)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message,"all")
end

function walkto(pos1,pos2,pos3)
    game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(pos1,pos2,pos3))
end

function jump()
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end

function sit()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
end

function exit()
    game:Shutdown()
end

function findbackdoor()
    print("Cooming Soon!")
end

function execute(scr)
    print("Cooming Soon!")
end

function join(place)
    game.Players.LocalPlayer:Kick("Joining..")
    wait(10)
    game:GetService("TeleportService"):Teleport(place, game.Players.LocalPlayer)
end

function rejoin()
    game.Players.LocalPlayer:Kick("Re Joining..")
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end

function equip(name)
    game.Players.LocalPlayer.Backpack[name].Parent = game.Players.LocalPlayer.Character
end

function unequip(name)
    game.Players.LocalPlayer.Character[name].Parent = game.Players.LocalPlayer.Backpack
end

function kill()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end

function run(scr)
    loadstring(scr)()
end
