--!strict

local AliasReducer = script.Parent.Parent
local byUserId = require(AliasReducer.Reducers.Aliases.byUserId)
local contacts = require(AliasReducer.Reducers.Aliases.contacts)

local RoduxAliasesTypes = require(AliasReducer.RoduxAliasesTypes)

local DEFAULT_STATE: RoduxAliasesTypes.State = {}

return function(options: RoduxAliasesTypes.RoduxOptions)
	return function(state, action)
		local newState: RoduxAliasesTypes.State = state or DEFAULT_STATE

		local byUserIdReducer = byUserId(options)
		local contactsReducer = contacts(options)

		return {
			byUserId = byUserIdReducer(newState.byUserId, action),
			contacts = contactsReducer(newState.contacts, action)
		}
	end
end
