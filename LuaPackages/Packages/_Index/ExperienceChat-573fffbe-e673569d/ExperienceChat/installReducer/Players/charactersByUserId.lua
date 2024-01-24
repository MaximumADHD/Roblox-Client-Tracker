local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local CharacterAdded = require(Actions.CharacterAdded)
local PlayerRemoved = require(Actions.PlayerRemoved)

export type State = {
	[string]: Model,
}

return Rodux.createReducer({}, {
	[CharacterAdded.name] = function(state: State, action: CharacterAdded.Action)
		return Dictionary.join(state, {
			[action.userId] = action.character,
		})
	end :: any,

	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		return Dictionary.removeKey(state, action.userId)
	end :: any,
})
