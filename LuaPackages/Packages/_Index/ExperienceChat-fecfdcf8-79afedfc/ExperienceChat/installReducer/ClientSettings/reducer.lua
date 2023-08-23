local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local ClientSettingsLoaded = require(Actions.ClientSettingsLoaded)
local ClientSettingsChanged = require(Actions.ClientSettingsChanged)

type State = {
	preferredTransparency: number,
}
local defaultState: State = {
	preferredTransparency = 1,
}

return Rodux.createReducer(defaultState, {
	[ClientSettingsLoaded.name] = function(state, action: ClientSettingsLoaded.Action)
		return Dictionary.join(state, action.value)
	end :: any,

	[ClientSettingsChanged.name] = function(state, action: ClientSettingsChanged.Action)
		return Dictionary.join(state, {
			[action.property] = action.value,
		})
	end :: any,
})
