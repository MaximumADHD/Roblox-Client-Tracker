local AliasReducer = script:FindFirstAncestor("rodux-aliases")
local Root = AliasReducer.Parent
local Rodux = require(Root.Rodux)
local Cryo = require(Root.Cryo)

local Actions = AliasReducer.Actions
local AliasUpdated = require(Actions.AliasUpdated)
local AliasRemoved = require(Actions.AliasRemoved)

local DEFAULT_STATE = {}

return function(options)
	local aliasNetworking = options.aliasNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[AliasUpdated.name] = function(state, action)
			assert(type(action.payload.userId) == "string", "Expected userId to be a string")
			assert(type(action.payload.newAlias) == "string", "Expected newAlias to be a string")

			return Cryo.Dictionary.join(state, {
				[action.payload.userId] = action.payload.newAlias,
			})
		end,

		[AliasRemoved.name] = function(state, action)
			assert(type(action.payload.userId) == "string", "Expected userId to be a string")

			return Cryo.Dictionary.join(state, {
				[action.payload.userId] = Cryo.None,
			})
		end,

		[aliasNetworking.GetTagsFromUserIds.Succeeded.name] = function(state, action)
			local additionalAliases = {}
			for _, aliasTag in ipairs(action.responseBody) do
				local userId = tostring(aliasTag.targetUserId)
				additionalAliases[userId] = aliasTag.targetUserTag
			end

			return Cryo.Dictionary.join(state, additionalAliases)
		end,
	})
end
