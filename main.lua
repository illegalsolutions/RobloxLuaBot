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

function run(scr)
    print("Cooming Soon!")
end

function join(place)
    game.Players.LocalPlayer:Kick("Joining..")
    game:GetService("TeleportService"):Teleport(place, game.Players.LocalPlayer)
end

function rejoin()
    game.Players.LocalPlayer:Kick("Re Joining..")
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end

