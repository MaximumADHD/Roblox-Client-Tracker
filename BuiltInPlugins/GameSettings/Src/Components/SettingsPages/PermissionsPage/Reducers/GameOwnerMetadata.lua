--[[
	Reducer for game owner metadata
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

return Rodux.createReducer({
	creatorType = nil,
	creatorId = nil,
	creatorName = nil,
	creatorFriends = nil,
	groupOwnerId = nil,
	groupOwnerName = nil,
}, {
	ResetStore = function(state, action)
		return {}
	end,

	SetCreatorType = function(state, action)
		return Cryo.Dictionary.join(state, {
			creatorType = action.creatorType
		})
	end,

	SetCreatorId = function(state, action)
		return Cryo.Dictionary.join(state, {
			creatorId = action.creatorId
		})
	end,

	SetCreatorName = function(state, action)
		return Cryo.Dictionary.join(state, {
			creatorName = action.creatorName
		})
	end,

	SetCreatorFriends = function(state, action)
		assert(state.creatorType == Enum.CreatorType.User, "Setting friends in non-user owned game")
		return Cryo.Dictionary.join(state, {
			creatorFriends = action.creatorFriends
		})
	end,

	SetGroupOwnerId = function(state, action)
		assert(state.creatorType == Enum.CreatorType.Group, "Setting group owner id in non-group owned game")
		return Cryo.Dictionary.join(state, {
			groupOwnerId = action.groupOwnerId
		})
	end,

	SetGroupOwnerName = function(state, action)
		assert(state.creatorType == Enum.CreatorType.Group, "Setting group owner name in non-group owned game")
		return Cryo.Dictionary.join(state, {
			groupOwnerName = action.groupOwnerName
		})
	end,
})