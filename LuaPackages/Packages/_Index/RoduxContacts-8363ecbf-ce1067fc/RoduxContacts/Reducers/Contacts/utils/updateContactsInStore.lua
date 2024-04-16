local ContactsReducer = script.Parent.Parent.Parent.Parent
local Types = ContactsReducer.Types
local Packages = ContactsReducer.Parent
local ActionTypes = require(Types.ActionTypes)
local ReducerTypes = require(Types.ReducerTypes)
local Dash = require(Packages.Dash) :: any

return function(state: ReducerTypes.ByContactId, action: ActionTypes.GetContactEntitiesByContactIdSucceeded)
	local contactUsers: { ActionTypes.UserContact } = action.responseBody.userContactsEntities
	local newState = {}

	Dash.forEach(contactUsers, function(contact)
		newState[contact.id] = {
			contactName = contact.name,
			mutualContacts = contact.mutualContacts,
			avatarAssetHashId = contact.avatarAssetHashId,
			headshotThumbnailUrl = contact.headshotThumbnailUrl,
			avatarThumbnailUrl = contact.avatarThumbnailUrl,
		}
	end)

	return Dash.join(state, newState)
end
