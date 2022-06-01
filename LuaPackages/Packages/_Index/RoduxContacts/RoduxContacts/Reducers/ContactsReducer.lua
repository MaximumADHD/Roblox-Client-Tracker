local ContactsReducer = script.Parent.Parent
local Types = ContactsReducer.Types
local byContactId = require(ContactsReducer.Reducers.Contacts.byContactId)
local ReducerTypes = require(Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.Reducer = {
	byContactId = {},
}

return function(options)
	return function(state: ReducerTypes.Reducer, action)
		local newState: ReducerTypes.Reducer = state or DEFAULT_STATE

		local byContactIdReducer = byContactId(options)

		return {
			byContactId = byContactIdReducer(newState.byContactId, action),
		}
	end
end
