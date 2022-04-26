--!strict
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local TargetTextChannelChanged = require(ExperienceChat.Actions.TargetTextChannelChanged)

return Rodux.createReducer(nil, {
	[TargetTextChannelChanged.name] = function(_state, action: TargetTextChannelChanged.Action)
		return action.textChannel
	end,
})
