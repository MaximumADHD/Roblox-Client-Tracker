local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local initializeSelf = require(CoreGuiModules:WaitForChild("Pip"):WaitForChild("PipSelfView"))
initializeSelf(game.Players.LocalPlayer)
