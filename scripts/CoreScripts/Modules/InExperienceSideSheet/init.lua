--[[
	CoreScript entry point for the InExperienceSideSheet module.
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local InExperienceSideSheetApp = InExperienceSideSheet.SideSheet.createSideSheet(
	{ VoiceStateContext.Provider },
	{ ChatSelector = ChatSelector }
)

return InExperienceSideSheetApp
