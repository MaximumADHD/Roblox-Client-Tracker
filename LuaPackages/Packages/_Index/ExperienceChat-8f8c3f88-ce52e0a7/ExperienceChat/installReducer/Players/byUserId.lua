local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local PlayerAdded = require(Actions.PlayerAdded)
local PlayerRemoved = require(Actions.PlayerRemoved)

export type State = {
	string: {
		userId: string,
		username: string,
		displayName: string,
	},
}

return Rodux.createReducer({}, {
	[PlayerAdded.name] = function(state: State, action: PlayerAdded.Action)
		return Dictionary.join(state, {
			[action.userId] = {
				userId = action.userId,
				username = action.username,
				displayName = action.displayName,
			},
		})
	end :: any,

	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		return Dictionary.removeKey(state, action.userId)
	end :: any,
})
