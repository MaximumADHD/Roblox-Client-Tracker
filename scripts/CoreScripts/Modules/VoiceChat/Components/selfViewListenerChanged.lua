--[[
	This file is injected into the ExperienceChat repo for Bubble Chat.

	selfViewVisibilityUpdatedSignal: Signal to listen to in order to check if
		Self View was toggled on or off.
	getSelfViewVisibility: Getter function to get whether Self View is
		on or off.
]]
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local selfViewVisibilityUpdatedSignal = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)
local SelfViewAPI = require(RobloxGui.Modules.SelfView.publicApi)

return {
	selfViewVisibilityUpdatedSignal = selfViewVisibilityUpdatedSignal,
	getSelfViewVisibility = SelfViewAPI.getSelfViewIsOpenAndVisible,
}
