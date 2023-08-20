local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Emnabxolb Keyless Hub", "DarkTheme")

--Tab: UNIVERSAL
local Universal = Window:NewTab("Universal")
local UniversalSection = Universal:NewSection("LocalPlayer")


UniversalSection:NewButton("Infinite Jump", "Like double jump but infinite", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bC97eAyR"))()
end)

UniversalSection:NewButton("Noclip", "Walk through walls and stuff", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/pKV2Ys4E"))()
end)


UniversalSection:NewButton("Ctrl + Click TP", "Ctrl + Click to teleport", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
end)

UniversalSection:NewSlider("Speed", "Update Player Speed", 500, 16, function(speed)
local player = game.Players.LocalPlayer
local char = player.Character
local hum = char.WaitForChild("Humanoid")
    hum.WalkSpeed = speed
end)

UniversalSection:NewSlider("Jump Power", "Update Player Jump Power", 500, 50, function(power)
    hum.JumpPower = power
end)

UniversalSection:NewToggle("Toggle Super-Human", "Walk faster, jump higher", function(state)
    if state then
        hum.WalkSpeed = 120
        hum.JumpPower = 120
    else
        hum.WalkSpeed = 16
        hum.JumpPower = 50
    end
end)

local OtherSection = Universal:NewSection("Other")

OtherSection:NewTextBox("Link to raw code", "Put in link to raw code :)", function(txt)
	loadstring(game:HttpGet(txt))()
end)

OtherSection:NewButton("Infinite Yield", "Infinite Yield Command Panel", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

OtherSection:NewButton("Dex Explorer", "See into game files", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4'))()
end)


--Tab: ESP
local ESP = Window:NewTab("ESP")
local PlrESP = ESP:NewSection("Player ESP")

PlrESP:NewButton("Player ESP", "See players thru walls :)", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
end)

--Tab: Games
local games = Window:NewTab("Supported Games")
local doors = games:NewSection("Doors")

doors:NewButton("Doors", "Open the Doors panel", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/mapletree245/eMnaB-Scripts/main/Emnab-Doors.lua'))()
end)

--Tab: Credits & Updates
local credits = Window:NewTab("Credits & Updates")
local credSection = credits:NewSection("--Credits--")

credSection:NewLabel("Kavo UI, Made by mapletree245 (Emnabxolb)")

local updatesSection = credits:NewSection("--Updates--")

updatesSection:NewLabel("Emnabxolb Keyless Hub v2 (20/08/23)")
updatesSection:NewLabel("Just released on GitHub")

