local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DOORS", "BloodTheme")

--tab: plr
local ws = 15
local player = Window:NewTab("LocalPlayer")
local plrChanges = player:NewSection("Player Changes")

--spd
plrChanges:NewSlider("Walkspeed", "SPEEEED!!", 21, 15, function(speed) -- 500 (MaxValue) | 0 (MinValue)
    ws = speed
end)

--gm
plrChanges:NewToggle("God Mode/No-clip Bypass", "Needs Regular Noclip as well", function(state)
    if state then
        local Col = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
        Col.Position = Col.Position - Vector3.new(0,10,0) 

    else
        local Col = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
        Col.Position = Col.Position + Vector3.new(0,10,0) 
    end
end)

--noclip
local Noclip = nil
local Clip = nil
local keyNC = N

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

plrChanges:NewToggle("Regular Noclip", "Go thru walls", function(state)
    if state then
       noclip()
    else
        clip()
    end
end)

plrChanges:NewTextBox("Noclip Keybind", "Bind a kay to activate noclip", function(keybind)
	keyNC = keybind
		local UIS = game:GetService("UserInputService")

		UIS.InputBegan:Connect(function()
				if input.UserInputType == Enum.UserInputType.Keyboard then
					if input.KeyCode == Enum.KeyCode.keyNC then
						if Clip == true
						noclip()
						else
						clip()	
						end
					end
				end
		end)
end)

--finish ws
while true do
  wait()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
    end

