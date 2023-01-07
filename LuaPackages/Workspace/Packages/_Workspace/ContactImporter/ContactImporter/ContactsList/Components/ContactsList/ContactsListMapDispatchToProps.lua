local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local NetworkingFriends = dependencies.NetworkingFriends
local LocalTypes = require(ContactImporter.Common.LocalTypes)
local NetworkingContacts = dependencies.NetworkingContacts
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local llama = dependencies.llama
local getFFlagNavigateToContactsListFirst = require(ContactImporter.Flags.getFFlagNavigateToContactsListFirst)

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
				return
			else
				return dispatch(NetworkingContacts.GetContactEntitiesByContactId.API(args))
			end
		end,
		uploadContacts = function(args: LocalTypes.UploadContactsByUser)
			return dispatch(NetworkingContacts.UploadContactsByUser.API(args))
		end,
		updateUserSettings = if getFFlagNavigateToContactsListFirst()
			then function()
				return dispatch(NetworkingUserSettings.UpdateUserSettings.API({ canUploadContacts = true }))
			end
			else nil,
	}
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
