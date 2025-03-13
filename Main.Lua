local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))() -- initiate rayfield

local Window = Rayfield:CreateWindow({
   Name = "EchoHub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "EchoHub",
   LoadingSubtitle = "Powered by Sirius - Developed by Corrupt_Echo",
   Theme = "Amythest", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "FattyCheese Reborn", -- Create a custom folder for your hub/game
      FileName = "Config"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "pNxb9Hc4", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "FattyCheese | Key",
      Subtitle = "FattyCheese Rebooted",
      Note = "Key is 1234", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"FattyCheese2025"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Welcome To EchoHub!",
   Content = "We are glad you made it!",
   Duration = 10,
   Image = "component",
})

--All Initializing done, below is scripts and tabs and stuff

local UniversalTab = Window:CreateTab("Universal", "braces") -- Title, Lucide Image

-- Keyboard
local Button = UniversalTab:CreateButton({
   Name = "Keyboard",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
   end,
})

--Infinite Yield
local Button = UniversalTab:CreateButton({
   Name = "Admin Commands (IY)",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source",true))()
   end,
})



--Invisible
local Button = UniversalTab:CreateButton({
   Name = "Invisible",
   Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
   end,
})

local Button = UniversalTab:CreateButton({
   Name = "Fly Gui V3",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
   end,
})



--Divider
local Divider = UniversalTab:CreateDivider()

--Move Speed
local Slider = UniversalTab:CreateSlider({
   Name = "Speed",
   Range = {0, 500},
   Increment = 1,
   Suffix = "0-500",
   CurrentValue = 16,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = Value -- Sets the player's speed to the slider value
   end,
})

--Jump Hight
local Slider = UniversalTab:CreateSlider({
   Name = "Jump",
   Range = {0, 500},
   Increment = 1,
   Suffix = "0-500",
   CurrentValue = 50,
   Flag = "Jump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = Value -- Sets the player's speed to the slider value
   end,
})

--Divider
local Divider = UniversalTab:CreateDivider()

--reset
local Button = UniversalTab:CreateButton({
   Name = "Reset Player",
   Callback = function()
		game.Players.LocalPlayer.Character:BreakJoints()
   end,
})

--Divider
local Divider = UniversalTab:CreateDivider()

local Button = UniversalTab:CreateButton({
   Name = "Rochips universal",
   Callback = function()
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-rochips-universal-18294"))()
   end,
})

local Button = UniversalTab:CreateButton({
   Name = "Rochips admin cmds",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/new/refs/heads/main/cmd.lua"))()
		
   end,
})

--Divider
local Divider = UniversalTab:CreateDivider()

local Button = UniversalTab:CreateButton({
   Name = "FattyEsp",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/HqujTKnb",true))()
   end,
})

local Button = UniversalTab:CreateButton({
   Name = "FattyFPS",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/1r6W4r6g",true))()
   end,
})

local Button = UniversalTab:CreateButton({
   Name = "FattyMini",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/5da7mfvk",true))()
   end,
})

local UniversalTab = Window:CreateTab("GameHubs", "moon") -- Title, Lucide Image
local Button = gamehubsTab:CreateButton({
   Name = "Slap Battles",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Darklaw-game/Echo-Hub/refs/heads/main/GameHubs/SlapBattles.Lua",true))()
   end,
})

local NDSTab = Window:CreateTab("NDS", "tornado")

local Button = NDSTab:CreateButton({
   Name = "Aura",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-AURA/main/kawaii_aura.lua", true))()
   end,
})

local Button = NDSTab:CreateButton({
   Name = "Telekenisis",
   Callback = function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty11.lua"))()
   end,
})



--TPT2 Tab
local tpt2Tab = Window:CreateTab("TPT2", "roller-coaster")

--Movement Label for tpt2
local Label = tpt2Tab:CreateLabel("Movement", "person-standing", Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

--Move Speed (toned down)
local Slider = tpt2Tab:CreateSlider({
   Name = "Speed (reasonable)",
   Range = {0, 300},
   Increment = 10,
   Suffix = "0-300",
   CurrentValue = 16,
   Flag = "TPT2-Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = Value -- Sets the player's speed to the slider value
   end,
})

--Jump Power (toned down)
local Slider = tpt2Tab:CreateSlider({
   Name = "Jump (reasonable)",
   Range = {0, 300},
   Increment = 10,
   Suffix = "0-300",
   CurrentValue = 50,
   Flag = "TPT2-Jump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = Value -- Sets the player's speed to the slider value
   end,
})

--divider tpt2 tab (separate set speeds and reset speeds)
local Divider = tpt2Tab:CreateDivider()

--reset speed in tpt2 tab
local Button = tpt2Tab:CreateButton({
   Name = "Reset Speed",
   Callback = function()
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
   end,
})

--reset jump for tpt2
local Button = tpt2Tab:CreateButton({
   Name = "Reset Jump",
   Callback = function()
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 50
   end,
})

--time label for tpt2
local Label = tpt2Tab:CreateLabel("Time", "clock", Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme


--midnight for tpt2
local Toggle = tpt2Tab:CreateToggle({
   Name = "Midnight Toggle",
   CurrentValue = false,
   Flag = "MidnightTPT2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       -- The variable (Value) is a boolean on whether the toggle is true or false
       if Value then
           -- Enable ClockTime change when toggle is ON
           game.Lighting.ClockTime = 0
       end
   end,
})

-- Keep the original connection
local runService = game:GetService("RunService")
runService.RenderStepped:Connect(function()
    if Toggle.CurrentValue then
        game.Lighting.ClockTime = 0 -- 0 represents 12 AM, active only when toggle is on
    end
end)

--midday for tpt2
local Toggle = tpt2Tab:CreateToggle({
   Name = "Midday Toggle",
   CurrentValue = false,
   Flag = "MiddayTPT2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       -- The variable (Value) is a boolean on whether the toggle is true or false
       if Value then
           -- Enable ClockTime change when toggle is ON
           game.Lighting.ClockTime = 12
       end
   end,
})

-- Keep the original connection
local runService = game:GetService("RunService")
runService.RenderStepped:Connect(function()
    if Toggle.CurrentValue then
        game.Lighting.ClockTime = 12 -- 0 represents 12 AM, active only when toggle is on
    end
end)

local mm2Tab = Window:CreateTab("MM2", "skull")

--another menu
local Button = mm2Tab:CreateButton({
   Name = "Load MM2 menu",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
   end,
})


--EuroTunnel, Le shuttle window
local EurotunnelTab = Window:CreateTab("EuroTunnel, Le shuttle", "train-front") -- Title, Image

local Section = EurotunnelTab:CreateSection("AutoFarming")

local Paragraph = EurotunnelTab:CreateParagraph({Title = "Autofarm", Content = "You must press the buttons in order... at the buy point you must hold E or Q manually to get your items to sell, same thing with selling, that is done manually"})

local Button = EurotunnelTab:CreateButton({
   Name = "To Buy Point",
   Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Define the target coordinates for teleportation
		local targetPosition = Vector3.new(126, 5, 223) -- Replace these values with your desired coordinates

		-- Teleport the player by setting their HumanoidRootPart's Position
		if character and character:FindFirstChild("HumanoidRootPart") then
   		 character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
		end
   end,
})

local Button = EurotunnelTab:CreateButton({
   Name = "To Train",
   Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Define the target coordinates for teleportation
		local targetPosition = Vector3.new(6669, 31, 965) -- Replace these values with your desired coordinates

		-- Teleport the player by setting their HumanoidRootPart's Position
		if character and character:FindFirstChild("HumanoidRootPart") then
   		 character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
		end
   end,
})


local Button = EurotunnelTab:CreateButton({
   Name = "To Dealer",
   Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Define the target coordinates for teleportation
		local targetPosition = Vector3.new(12155, 54, -512) -- Replace these values with your desired coordinates

		-- Teleport the player by setting their HumanoidRootPart's Position
		if character and character:FindFirstChild("HumanoidRootPart") then
   		 character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
		end
   end,
})

local Button = EurotunnelTab:CreateButton({
   Name = "Respawn (to repeat process)",
   Callback = function()
		game.Players.LocalPlayer.Character:BreakJoints()
   end,
})

local DeadRailsTab = Window:CreateTab("Dead Rails", "skull") -- Title, Image

local Button = DeadRailsTab:CreateButton({
   Name = "Wisoky Menu Free",
   Callback = function()
		loadstring(game:HttpGet("https://gist.githubusercontent.com/Diamond2Top/7a4ecc50920deec741b2c29d35ee7a61/raw/b26ddad7ee109b49b30630f22167e5a2ac111e75/gistfile1.txt"))()
   end,
})


--bee swarm
local BeeSwarmTab = Window:CreateTab("Bee Swarm Sim", "bug")

local Button = BeeSwarmTab:CreateButton({
   Name = "To Spawn",
   Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Define the target coordinates for teleportation
		local targetPosition = Vector3.new(-113, 5, 272) -- Replace these values with your desired coordinates

		-- Teleport the player by setting their HumanoidRootPart's Position
		if character and character:FindFirstChild("HumanoidRootPart") then
   		 character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
		end
   end,
})

local Button = BeeSwarmTab:CreateButton({
   Name = "5",
   Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Define the target coordinates for teleportation
		local targetPosition = Vector3.new(19, 25, 8) -- Replace these values with your desired coordinates

		-- Teleport the player by setting their HumanoidRootPart's Position
		if character and character:FindFirstChild("HumanoidRootPart") then
   		 character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
		end
   end,
})


local BuildABoatTab = Window:CreateTab("BuildABoat", "sailboat")
local Button = BuildABoatTab:CreateButton({
   Name = "Boo hub",
   Callback = function()
      loadstring(game:HttpGet("https://you.whimper.xyz/sources/boohub/BABFT.lua"))()
   -- The function that takes place when the button is pressed
   end,
})

local BloxFruitTab = Window:CreateTab("BloxFruit", "banana")
local Button = BloxFruitTab:CreateButton({
   Name = "Cokka Hub",
   Callback = function()
      loadstring(game:HttpGet("https://you.whimper.xyz/sources/CokkaHub/main.lua"))()
   -- The function that takes place when the button is pressed
   end,
})


local Button = BloxFruitTab:CreateButton({
   Name = "Redz hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
   -- The function that takes place when the button is pressed
   end,
})

local LootifyTab = Window:CreateTab("Lootify", "swords")

local Button = LootifyTab:CreateButton({
   Name = "PanHub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Cheemos/PanHub/refs/heads/main/HubLoader"))()
   -- The function that takes place when the button is pressed
   end,
})

local MuscleLegendsTab = Window:CreateTab("MuscleLegends", "biceps-flexed")
local Button = MuscleLegendsTab:CreateButton({
   Name = "SpeedX",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/refs/heads/main/Speed%20Hub%20X.lua",true))()
   -- The function that takes place when the button is pressed
   end,
})


--Credit tab
local CreditsTab = Window:CreateTab("Credits", "scroll-text") -- Title, Image

--Credits Label
local Label = CreditsTab:CreateLabel("Credits", "scroll-text", Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

--Credits Pararaph
local Paragraph = CreditsTab:CreateParagraph({Title = "Credits", Content = "Thanks to RayField for the UI since Orion Lib didnt work | Made by FattyCheese and Echo - Our goal is make a script with a bunch of scripts in one and credit to thoose who made the scripts"})
local Paragraph = CreditsTab:CreateParagraph({Title = "FattyCheese Developments", Content = "Made and Owned by FattyCheese Developments And Echo Developments "})
