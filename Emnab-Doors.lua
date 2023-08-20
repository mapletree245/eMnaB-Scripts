local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DOORS", "BloodTheme")

--plr
local ws = 15
local player = Window:NewTab("LocalPlayer")
local plrChanges = player:NewSection("Player Changes")

plrChanges:NewSlider("Walkspeed", "SPEEEED!!", 21, 15, function(speed) -- 500 (MaxValue) | 0 (MinValue)
    ws = speed
end)

plrChanges:NewToggle("God Mode", "Harmless Rush & Ambush", function(state)
    if state then
        local Col = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
        Col.Position = Col.Position - Vector3.new(0,10,0) 

    else
        local Col = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
        Col.Position = Col.Position + Vector3.new(0,10,0) 
    end
end)

while true do
  wait()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
    end

