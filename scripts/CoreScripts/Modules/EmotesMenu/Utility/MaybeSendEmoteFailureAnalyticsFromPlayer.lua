--!nonstrict
--[[
	When attempting to play an emote, the emote may fail playing
	due to a number of issues in the character hierarchy
	including a lack of Character, Humanoid, R15 rig type,
	Animate script, HumanoidDescription, or PlayEmote bindable function.
	This allows us to share the same failure checks between the emote wheel ui
	and emoting through chat
]]

local Utility = script.Parent
local EmotesMenu = Utility.Parent

local EmotesConstants = require(EmotesMenu.Constants)

local function MaybeSendEmoteFailureAnalyticsFromPlayer(player, failureCallback)
	local character = player.Character
	if not character then
		failureCallback(EmotesConstants.ErrorTypes.TemporarilyUnavailable)
		return true
	end

	local humanoid = character and character:FindFirstChildOfClass("Humanoid") or nil
	if not humanoid then
		failureCallback(EmotesConstants.ErrorTypes.TemporarilyUnavailable)
		return true
	end

	if humanoid and humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		failureCallback(EmotesConstants.ErrorTypes.SwitchToR15)
		return true
	end

	local animate = character and character:FindFirstChild("Animate") or nil
	local humanoidDescription = humanoid and humanoid:FindFirstChildOfClass("HumanoidDescription") or nil
	if not animate or not humanoidDescription then
		failureCallback(EmotesConstants.ErrorTypes.NotSupported)
		return true
	end

	local playEmoteBindable = animate and animate:FindFirstChild("PlayEmote") or nil
	if not playEmoteBindable or not playEmoteBindable:IsA("BindableFunction") then
		failureCallback(EmotesConstants.ErrorTypes.NotSupported)
		return true
	end

	return false
end

return MaybeSendEmoteFailureAnalyticsFromPlayer