function chat(message)
local args = {
    [1] = message,
    [2] = "All",
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

function WalkTo(pos1,pos2,pos3)
    game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(pos1,pos2,pos3))
end

function jump()
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end

function sit()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
end

