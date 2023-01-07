local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus
local NetworkingFriends = dependencies.NetworkingFriends
local NetworkingContacts = dependencies.NetworkingContacts
local RoduxContacts = dependencies.RoduxContacts
local Selectors = RoduxContacts.Selectors
local memoize = dependencies.memoize
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue

local getDeviceContacts = require(script.Parent.getDeviceContacts)
local decorateMatchedContact = require(script.Parent.decorateMatchedContact)

local mapStateToProps = function(state)
	local currentUserId = state.LocalUserId

	local contactsReducer = getDeepValue(state, RODUX_KEY .. ".Contacts")
	local deviceContacts = memoize(getDeviceContacts)(contactsReducer)
	local matchedContacts = decorateMatchedContact(Selectors.sortContacts(state), contactsReducer)

	local isFetching = NetworkingFriends.RequestFriendshipFromContactId.getStatus(state, currentUserId)
			== NetworkStatus.Fetching
		or NetworkingContacts.FindContactFriends.getStatus(state, currentUserId) == NetworkStatus.Fetching
		or NetworkingContacts.GetContactEntitiesByContactId.getStatus(state, currentUserId) == NetworkStatus.Fetching
		or NetworkingContacts.UploadContactsByUser.getStatus(state, currentUserId) == NetworkStatus.Fetching

	return {
		localUserId = state.LocalUserId,
		matchedContacts = matchedContacts,
		deviceContacts = deviceContacts,
		screenSize = state.ScreenSize,
		isFetching = isFetching,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
