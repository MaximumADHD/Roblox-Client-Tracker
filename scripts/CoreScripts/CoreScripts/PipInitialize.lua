local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local initializeSelf = require(CoreGuiModules:WaitForChild("Pip"):WaitForChild("PipSelfView"))
initializeSelf(Players.LocalPlayer)
local targetPlayer = nil
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= Players.LocalPlayer then
        targetPlayer = player
        break
    end
end
local initializeOther = require(CoreGuiModules:WaitForChild("Pip"):WaitForChild("PipOtherView"))
initializeOther(targetPlayer)
