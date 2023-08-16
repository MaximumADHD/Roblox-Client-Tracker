--!strict

local AliasReducer = script.Parent.Parent.Parent
local Root = AliasReducer.Parent
local Rodux = require(Root.Rodux) :: any
local llama = require(Root.llama) :: any

local Actions = AliasReducer.Actions
local AliasUpdated = require(Actions.AliasUpdated)
local AliasRemoved = require(Actions.AliasRemoved)
local ReceivedCanShowUserAlias = require(Actions.ReceivedCanShowUserAlias)

local RoduxAliasesTypes = require(AliasReducer.RoduxAliasesTypes)

local HIDDEN_ALIASES_KEY: string = "_INTERNAL_HIDDEN_DATA"

local function addUserIdsToState(state, aliases)
	return llama.Dictionary.join(state, aliases)
end

local function addUsersIdsToInternalState(state, aliases)
	local internalState = state[HIDDEN_ALIASES_KEY]
	local newInternalState = addUserIdsToState(internalState, aliases)
	return llama.Dictionary.join(state, {
		[HIDDEN_ALIASES_KEY] = newInternalState,
	})
end

local DEFAULT_STATE: RoduxAliasesTypes.ByUserId = {
	ShowUserAlias = true,
}

return function(options: RoduxAliasesTypes.RoduxOptions)
	local aliasNetworking = options.aliasNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[AliasUpdated.name] = function(state: RoduxAliasesTypes.ByUserId, action: RoduxAliasesTypes.RoduxAction)
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

		[AliasRemoved.name] = function(state: RoduxAliasesTypes.ByUserId, action: RoduxAliasesTypes.RoduxAction)
			assert(type(action.payload.userId) == "string", "Expected userId to be a string")

			local additionalAliases = {}
			additionalAliases[action.payload.userId] = llama.None

			if state.ShowUserAlias or state.ShowUserAlias == nil then
				return addUserIdsToState(state, additionalAliases)
			else
				return addUsersIdsToInternalState(state, additionalAliases)
			end
		end,

		[ReceivedCanShowUserAlias.name] = function(state: RoduxAliasesTypes.ByUserId, action: RoduxAliasesTypes.RoduxAction)
			assert(type(action.payload.showUserAlias) == "boolean", "Expected showUserAlias to be a boolean")

			if action.payload.showUserAlias == state.ShowUserAlias then
				return state
			end

			if action.payload.showUserAlias then
				return llama.Dictionary.join(state[HIDDEN_ALIASES_KEY] or {}, {
					ShowUserAlias = action.payload.showUserAlias,
					[HIDDEN_ALIASES_KEY] = llama.None,
				})
			else
				return {
					ShowUserAlias = action.payload.showUserAlias,

					[HIDDEN_ALIASES_KEY] = llama.Dictionary.join(state, {
						ShowUserAlias = llama.None,
						[HIDDEN_ALIASES_KEY] = llama.None,
					})
				}
			end
		end,

		[aliasNetworking.GetTagsFromUserIds.Succeeded.name] = function(state: RoduxAliasesTypes.ByUserId, action: RoduxAliasesTypes.RoduxAction)
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

		[aliasNetworking.SetUserTag.Succeeded.name] = function(state: RoduxAliasesTypes.ByUserId, action: RoduxAliasesTypes.RoduxAction)
			local aliasName = action.postBody.userTag
			local userId = action.postBody.targetUserId

			return llama.Dictionary.join(state, {
				[tostring(userId)] = aliasName,
			})
		end,
	})
end
