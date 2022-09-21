local ContactsReducer = script.Parent.Parent
local Types = ContactsReducer.Types
local byContactId = require(ContactsReducer.Reducers.Contacts.byContactId)
local byDeviceContactId = require(ContactsReducer.Reducers.Contacts.byDeviceContactId)
local hasSentRequest = require(ContactsReducer.Reducers.Contacts.hasSentRequest)
local ReducerTypes = require(Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.Reducer = {
	byContactId = {},
	byDeviceContactId = {},
	hasSentRequest = {},
}

return function(options)
	return function(state: ReducerTypes.Reducer, action)
		local newState: ReducerTypes.Reducer = state or DEFAULT_STATE

		local byContactIdReducer = byContactId(options)
		local byDeviceContactIdReducer = byDeviceContactId(options)
		local hasSentRequestReducer = hasSentRequest(options)

		return {
			byContactId = byContactIdReducer(newState.byContactId, action),
			byDeviceContactId = byDeviceContactIdReducer(newState.byDeviceContactId, action),
			hasSentRequest = hasSentRequestReducer(newState.hasSentRequest, action),
		}
	end
end
