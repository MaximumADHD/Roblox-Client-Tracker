local ContactsReducer = script.Parent.Parent.Parent.Parent
local Types = ContactsReducer.Types
local ReducerTypes = require(Types.ReducerTypes)
local Packages = ContactsReducer.Parent
local ActionTypes = require(Types.ActionTypes)
local Dash = require(Packages.Dash) :: any

return function(action: ActionTypes.FindContactFriendsSucceeded)
	local contactIds: { string } = action.responseBody.userContactIds
	local newState: ReducerTypes.ByContactId = {}

	Dash.forEach(contactIds, function(contactId)
		newState[contactId] = {}
	end)

	return newState
end
