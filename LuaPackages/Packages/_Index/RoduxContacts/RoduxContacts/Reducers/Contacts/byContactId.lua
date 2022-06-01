local ContactsReducer = script.Parent.Parent.Parent
local Packages = ContactsReducer.Parent
local Types = ContactsReducer.Types
local Rodux = require(Packages.Rodux) :: any

local setContactsInStore = require(script.Parent.utils.setContactsInStore)
local ActionTypes = require(Types.ActionTypes)
local ReducerTypes = require(Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.ByContactId = {}

return function(options)
	local NetworkingContacts = options.networkingContacts

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingContacts.FindContactFriends.Succeeded.name] = function(state: ReducerTypes.ByContactId, action: ActionTypes.FindContactFriendsSucceeded)
			return setContactsInStore(state, action)
		end,
	})
end
