--!strict

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local CoreScriptsPlayerFeedback = require(CorePackages.Workspace.Packages.CoreScriptsPlayerFeedback)

local appInstance = CoreScriptsPlayerFeedback.createApp()
appInstance.instance.Parent = RobloxGui

return appInstance
