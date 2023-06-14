local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Set = require(Packages.llama).Set

local Actions = ExperienceChat.Actions
local UserMuted = require(Actions.UserMuted)
local UserUnmuted = require(Actions.UserUnmuted)

export type State = {
	string: boolean,
}

local defaultState = {}
return Rodux.createReducer(defaultState, {
	[UserMuted.name] = function(state: State, action: UserMuted.Action)
		return Set.add(state, action.userId)
	end :: any,

	[UserUnmuted.name] = function(state: State, action: UserUnmuted.Action)
		return Set.subtract(state, action.userId)
	end :: any,
})
