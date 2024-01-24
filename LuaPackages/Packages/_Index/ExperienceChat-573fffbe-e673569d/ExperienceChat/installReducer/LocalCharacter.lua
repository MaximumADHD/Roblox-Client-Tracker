local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local LocalCharacterLoaded = require(ExperienceChat.Actions.LocalCharacterLoaded)

return Rodux.createReducer(nil, {
	[LocalCharacterLoaded.name] = function(_state, action: LocalCharacterLoaded.Action)
		return action.character
	end :: any,
})
