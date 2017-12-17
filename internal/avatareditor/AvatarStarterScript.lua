local coreGui = game:GetService("CoreGui")
local robloxGui = coreGui:FindFirstChild("RobloxGui")
local scriptContext = game:GetService("ScriptContext")

-- Load in the gui from server storage, parent a copy to CoreGui.
-- AvatarStarterScriptV2 expects it to be there.
local serverStorage = game:GetService("ServerStorage")
local screenGui = serverStorage:WaitForChild("ScreenGuiV2"):Clone()
screenGui.Name = "ScreenGui"
screenGui.Parent = coreGui
scriptContext:AddCoreScriptLocal("AvatarStarterScriptV2", robloxGui)
