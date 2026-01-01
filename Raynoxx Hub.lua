local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Rynoxx Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rynoxx Hub",
   LoadingSubtitle = "by LifeguardYT",
   ShowText = "Rynoxx", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "RynoxxHub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key",
      Subtitle = "Key System",
      Note = "No Discord server yet, key is: CXEH55UYZ6", -- Use this to tell the user how to get a key
      FileName = "RynoxxKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"CXEH55UYZ6"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local PlayerTab = Window:CreateTab("Player", 83204128201670) -- Title, Image

local Slider = PlayerTab:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 100},
   Increment = 1 ,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = PlayerTab:CreateSlider({
   Name = "Jump Power",
   Range = {7.2, 100},
   Increment = 1 ,
   Suffix = "Power",
   CurrentValue = 7.2,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Reset Walkspeed/Jumppower",
   Callback = function()
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = 7.2
   end,
})

local Tab = Window:CreateTab("Game", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Fly (By Gmilerlol)",
   Callback = function()
getgenv().Script = 'https://pastefy.app/Oqh2C1eX/raw'
local remote
pcall(function() remote = game:HttpGet('https://rbxscript.do.am/loader/main.html') end)
if not remote or remote == "" then pcall(function() remote = game:HttpGet(getgenv().Script) end) end
if remote then pcall(loadstring(remote)) end

   end,
})

local Button = Tab:CreateButton({
   Name = "Chat Bypasser (By Anna)",
   Callback = function()
getgenv().Script = 'https://raw.githubusercontent.com/AnnaRoblox/AnnaBypasser/refs/heads/main/AnnaBypasser.lua'
local remote
pcall(function() remote = game:HttpGet('https://rbxscript.do.am/loader/main.html') end)
if not remote or remote == "" then pcall(function() remote = game:HttpGet(getgenv().Script) end) end
if remote then pcall(loadstring(remote)) end

   end,
})

local Button = Tab:CreateButton({
   Name = "Click TP (By Ssmmc2)",
   Callback = function()
getgenv().Skip = true --values of 'true' and 'false'
getgenv().AntiAfk = false -- values of 'true' and 'false'
getgenv().Script = "https://raw.githubusercontent.com/Ssmmc3/ClickTP/main/ClickTP"

loadstring(game:HttpGet("https://raw.githubusercontent.com/abramsonhan/RScritps/refs/heads/main/rbxscript"))()	

   end,
})

local Button = Tab:CreateButton({
   Name = "Silent Spy by Fryzer Hub",
   Callback = function()
  getgenv().Script = 'https://raw.githubusercontent.com/FryzerHub/Biggestscript/refs/heads/main/SilentSpy'
local remote
pcall(function() remote = game:HttpGet('https://rbxscript.do.am/loader/main.html') end)
if not remote or remote == "" then pcall(function() remote = game:HttpGet(getgenv().Script) end) end
if remote then pcall(loadstring(remote)) end

   end,
})

local Button = Tab:CreateButton({
   Name = "ANBUWIN (By E-Vil)",
   Callback = function()
loadstring(game:HttpGet("https://e-vil.com/anbu/awin.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "CMD Admin by lxte",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/main.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Sense ESP (By Sirius)",
   Callback = function()
-- 1. Load the library
local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()

-- 2. Change the configuration.
Sense.teamSettings.enemy.enabled = true
Sense.teamSettings.enemy.box = true
Sense.teamSettings.enemy.boxColor[1] = Color3.new(0, 0.25, 0.75)

-- 3. Load the esp. It doesn't really matter where you put this, but it's recommended you put it at the end of your script.
Sense.Load()

-- 4. Unload the esp. When you unload Sense, it will clean up every drawing object and instance it has made.
--Sense.Unload()
   end,
})

local Button = Tab:CreateButton({
   Name = "Sirius (By Sirius)",
   Callback = function()
loadstring(game:HttpGet('https://sirius.menu/sirius'))()
   end,
})

local Tab = Window:CreateTab("Settings", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Destroy Rynoxx",
   Callback = function()
Rayfield:Destroy()
   end,
})