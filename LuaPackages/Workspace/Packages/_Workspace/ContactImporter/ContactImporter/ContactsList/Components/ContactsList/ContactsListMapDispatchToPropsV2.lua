local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local NetworkingFriends = dependencies.NetworkingFriends
local LocalTypes = require(ContactImporter.Common.LocalTypes)
local NetworkingContacts = dependencies.NetworkingContacts
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local RoduxContacts = dependencies.RoduxContacts
local Promise = dependencies.Promise
local llama = dependencies.llama
local getFFlagContactImporterLoadBlendedSuccessful =
	require(ContactImporter.Flags.getFFlagContactImporterLoadBlendedSuccessful)

local mapDispatchToProps = function(dispatch: any)
	return {
		requestFriendship = function(args: LocalTypes.RequestFriendshipFromContactId)
			return dispatch(NetworkingFriends.RequestFriendshipFromContactId.API(args))
		end,
		findContacts = function()
			return dispatch(NetworkingContacts.FindContactFriends.API()):andThen(function(response)
				return response.responseBody.userContactIds
			end)
		end,
		getContactEntities = function(args: LocalTypes.GetContactEntities)
			if llama.isEmpty(args) or not args then
				return if getFFlagContactImporterLoadBlendedSuccessful() then Promise.resolve() else Promise.reject()
			else
				return dispatch(NetworkingContacts.GetContactEntitiesByContactId.API(args))
			end
		end,
		uploadContacts = function(args: LocalTypes.UploadContactsByUser)
			return dispatch(NetworkingContacts.UploadContactsByUser.API(args))
		end,
		updateUserSettings = function()
			return dispatch(NetworkingUserSettings.UpdateUserSettings.API({ canUploadContacts = true }))
		end,
		deviceContactsReceived = function(contacts)
			return dispatch(RoduxContacts.Actions.DeviceContactsReceived(contacts))
		end,
		requestSent = function(contactId)
			return dispatch(RoduxContacts.Actions.RequestSent({
				id = contactId,
			}))
		end,
	}
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
