local ContactsReducer = script.Parent.Parent.Parent
local Packages = ContactsReducer.Parent
local Types = ContactsReducer.Types
local Rodux = require(Packages.Rodux) :: any

local setContactsInStore = require(script.Parent.utils.setContactsInStore)
local updateContactsInStore = require(script.Parent.utils.updateContactsInStore)
local ActionTypes = require(Types.ActionTypes)
local ReducerTypes = require(Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.ByContactId = {}

return function(options)
	local NetworkingContacts = options.networkingContacts

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingContacts.FindContactFriends.Succeeded.name] = function(
			_: ReducerTypes.ByContactId,
			action: ActionTypes.FindContactFriendsSucceeded
		): ReducerTypes.ByContactId
			return setContactsInStore(action)
		end :: (
			state: ReducerTypes.ByContactId,
			action: any
		) -> ReducerTypes.ByContactId,

		[NetworkingContacts.GetContactEntitiesByContactId.Succeeded.name] = function(
			state: ReducerTypes.ByContactId,
			action: ActionTypes.GetContactEntitiesByContactIdSucceeded
		): ReducerTypes.ByContactId
			return updateContactsInStore(state, action)
		end,
	})
end
