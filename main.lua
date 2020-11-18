function chat(message)
local args = {
    [1] = message,
    [2] = "All",
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

function WalkTo(pos)
    game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(pos))
end

function jump()
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end

