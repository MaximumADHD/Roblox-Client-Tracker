local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary
local List = require(Packages.llama).List

local Actions = ExperienceChat.Actions
local PlayerAdded = require(Actions.PlayerAdded)
local PlayerRemoved = require(Actions.PlayerRemoved)

export type State = {
	string: { string },
}

return Rodux.createReducer({}, {
	[PlayerAdded.name] = function(state: State, action: PlayerAdded.Action)
		local sanitizedDisplayName = string.lower(action.displayName)
		return Dictionary.join(state, {
			[sanitizedDisplayName] = List.append(state[sanitizedDisplayName] or {}, action.userId),
		})
	end :: any,

	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		return Dictionary.map(state, function(list)
			return List.removeValue(list, action.userId)
		end)
	end :: any,
})
