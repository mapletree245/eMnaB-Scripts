if game.PlaceID == 6516141723
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
  local Window = Library.CreateLib("Doors", "Midnight")
else
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
  local Window = Library.CreateLib("Doors", "Midnight")
  local tab = Window:NewTab("Error")
  tab:NewLabel("Error: Player not in doors")
end