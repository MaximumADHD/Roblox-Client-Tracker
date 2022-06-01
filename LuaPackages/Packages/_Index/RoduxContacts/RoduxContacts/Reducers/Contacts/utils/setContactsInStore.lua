local ContactsReducer = script.Parent.Parent.Parent.Parent
local Types = ContactsReducer.Types
local Packages = ContactsReducer.Parent
local ActionTypes = require(Types.ActionTypes)
local ReducerTypes = require(Types.ReducerTypes)
local Dash = require(Packages.Dash) :: any

return function(state: ReducerTypes.ByContactId, action: ActionTypes.FindContactFriendsSucceeded)
	local contactIds: { string } = action.responseBody.UserContactIds

	local getNewContacts = Dash.filter(contactIds, function(contactId)
		return state[contactId] == nil
	end)

	Dash.forEach(getNewContacts, function(newContactId)
		state[newContactId] = {}
	end)

	return state
end
