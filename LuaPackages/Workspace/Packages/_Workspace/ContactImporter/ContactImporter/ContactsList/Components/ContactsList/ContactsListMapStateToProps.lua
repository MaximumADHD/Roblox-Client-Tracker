local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local RoduxContacts = dependencies.RoduxContacts
local NetworkingFriends = dependencies.NetworkingFriends
local NetworkingContacts = dependencies.NetworkingContacts
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local Selectors = RoduxContacts.Selectors
local getFFlagNavigateToContactsListFirst = require(ContactImporter.Flags.getFFlagNavigateToContactsListFirst)

local mapStateToProps = function(state)
	local currentUserId = state.LocalUserId

	local isFetching = NetworkingFriends.RequestFriendshipFromContactId.getStatus(state, currentUserId)
			== NetworkStatus.Fetching
		or NetworkingContacts.FindContactFriends.getStatus(state, currentUserId) == NetworkStatus.Fetching
		or NetworkingContacts.GetContactEntitiesByContactId.getStatus(state, currentUserId) == NetworkStatus.Fetching
		or NetworkingContacts.UploadContactsByUser.getStatus(state, currentUserId) == NetworkStatus.Fetching

	if getFFlagNavigateToContactsListFirst() then
		isFetching = NetworkingFriends.RequestFriendshipFromContactId.getStatus(state, currentUserId)
				== NetworkStatus.Fetching
			or NetworkingContacts.FindContactFriends.getStatus(state, currentUserId) == NetworkStatus.Fetching
			or NetworkingContacts.GetContactEntitiesByContactId.getStatus(state, currentUserId) == NetworkStatus.Fetching
			or NetworkingUserSettings.UpdateUserSettings.getStatus(state, currentUserId) == NetworkStatus.Fetching
	end

	return {
		localUserId = state.LocalUserId,
		contacts = Selectors.sortContacts(state),
		screenSize = state.ScreenSize,
		isFetching = isFetching,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
