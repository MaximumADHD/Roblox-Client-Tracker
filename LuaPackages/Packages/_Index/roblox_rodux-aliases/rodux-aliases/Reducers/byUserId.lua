local AliasReducer = script:FindFirstAncestor("rodux-aliases")
local Root = AliasReducer.Parent
local Rodux = require(Root.Rodux)
local Cryo = require(Root.Cryo)

local Actions = AliasReducer.Actions
local AliasUpdated = require(Actions.AliasUpdated)
local AliasRemoved = require(Actions.AliasRemoved)
local ReceivedCanShowUserAlias = require(Actions.ReceivedCanShowUserAlias)

local HIDDEN_ALIASES_KEY = "_INTERNAL_HIDDEN_DATA"

local function addUserIdsToState(state, aliases)
	return Cryo.Dictionary.join(state, aliases)
end

local function addUsersIdsToInternalState(state, aliases)
	local internalState = state[HIDDEN_ALIASES_KEY]
	local newInternalState = addUserIdsToState(internalState, aliases)
	return Cryo.Dictionary.join(state, {
		[HIDDEN_ALIASES_KEY] = newInternalState,
	})
end

local DEFAULT_STATE = {
	ShowUserAlias = true,
}

return function(options)
	local aliasNetworking = options.aliasNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[AliasUpdated.name] = function(state, action)
			assert(type(action.payload.userId) == "string", "Expected userId to be a string")
			assert(type(action.payload.newAlias) == "string", "Expected newAlias to be a string")

			local additionalAliases = {}
			additionalAliases[action.payload.userId] = action.payload.newAlias

			if state.ShowUserAlias or state.ShowUserAlias == nil then
				return addUserIdsToState(state, additionalAliases)
			else
				return addUsersIdsToInternalState(state, additionalAliases)
			end
		end,

		[AliasRemoved.name] = function(state, action)
			assert(type(action.payload.userId) == "string", "Expected userId to be a string")

			local additionalAliases = {}
			additionalAliases[action.payload.userId] = Cryo.None

			if state.ShowUserAlias or state.ShowUserAlias == nil then
				return addUserIdsToState(state, additionalAliases)
			else
				return addUsersIdsToInternalState(state, additionalAliases)
			end
		end,

		[ReceivedCanShowUserAlias.name] = function(state, action)
			assert(type(action.payload.showUserAlias) == "boolean", "Expected showUserAlias to be a boolean")

			if action.payload.showUserAlias == state.ShowUserAlias then
				return state
			end

			if action.payload.showUserAlias then
				return Cryo.Dictionary.join(state[HIDDEN_ALIASES_KEY] or {}, {
					ShowUserAlias = action.payload.showUserAlias,
					[HIDDEN_ALIASES_KEY] = Cryo.None,
				})
			else
				return {
					ShowUserAlias = action.payload.showUserAlias,

					[HIDDEN_ALIASES_KEY] = Cryo.Dictionary.join(state, {
						ShowUserAlias = Cryo.None,
						[HIDDEN_ALIASES_KEY] = Cryo.None,
					})
				}
			end
		end,

		[aliasNetworking.GetTagsFromUserIds.Succeeded.name] = function(state, action)
			local additionalAliases = {}
			for _, aliasTag in ipairs(action.responseBody) do
				local userId = tostring(aliasTag.targetUserId)
				additionalAliases[userId] = aliasTag.targetUserTag
			end

			if state.ShowUserAlias or state.ShowUserAlias == nil then
				return addUserIdsToState(state, additionalAliases)
			else
				return addUsersIdsToInternalState(state, additionalAliases)
			end
		end,
	})
end
