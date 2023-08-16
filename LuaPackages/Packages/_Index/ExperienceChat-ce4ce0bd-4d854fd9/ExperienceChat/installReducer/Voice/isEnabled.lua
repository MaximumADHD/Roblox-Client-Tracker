local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local Actions = ExperienceChat.Actions
local VoiceEnabledChanged = require(Actions.VoiceEnabledChanged)

return Rodux.createReducer(false, {
	[VoiceEnabledChanged.name] = function(_state: boolean, action: VoiceEnabledChanged.Action)
		return action.enabled
	end :: any,
})
