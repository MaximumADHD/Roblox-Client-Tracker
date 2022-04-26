--!strict

local AliasReducer = script.Parent.Parent.Parent.Parent
local Root = AliasReducer.Parent
local Rodux = require(Root.Rodux) :: any
local llama = require(Root.llama) :: any

local RoduxAliasesTypes = require(AliasReducer.RoduxAliasesTypes)

local DEFAULT_STATE: RoduxAliasesTypes.ContactsByUserId = {}

return function(options: RoduxAliasesTypes.RoduxOptions)
	local aliasNetworking = options.aliasNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[aliasNetworking.GetContactFriendsFromUserId.Succeeded.name] = function(state, action)
			local contacts = action.responseBody.data
			local newIds: { [string]: boolean } = {}
			table.foreach(contacts, function(_, contact: any)
				newIds[tostring(contact.userId)] = true
			end)
			return llama.Dictionary.join(state, newIds)
		end,
	})
end
