local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local PlayerAdded = require(Actions.PlayerAdded)
local PlayerRemoved = require(Actions.PlayerRemoved)

export type State = {
	string: string,
}

return Rodux.createReducer({}, {
	[PlayerAdded.name] = function(state: State, action: PlayerAdded.Action)
		return Dictionary.join(state, {
			[action.username] = action.userId,
		})
	end,

	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		return Dictionary.filter(state, function(userId)
			return userId ~= action.userId
		end)
	end,
})
