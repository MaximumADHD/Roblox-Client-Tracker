--[[
	CoreScript entry point for the Groups module.
]]

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Groups = require(CorePackages.Workspace.Packages.Groups)

local GroupsInExperienceApp = Groups.GroupsInExperienceApp.createApp()

GroupsInExperienceApp.mountCoreUI(RobloxGui)

return GroupsInExperienceApp
