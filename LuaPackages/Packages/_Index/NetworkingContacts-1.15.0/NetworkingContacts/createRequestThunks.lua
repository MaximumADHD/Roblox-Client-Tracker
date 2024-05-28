local NetworkingContacts = script.Parent
local networkRequests = NetworkingContacts.networkRequests
local createUploadContactsByUser = require(networkRequests.createUploadContactsByUser)
local createFindContactFriends = require(networkRequests.createFindContactFriends)
local createGetContactEntitiesByContactId = require(networkRequests.createGetContactEntitiesByContactId)
local networkRequestsTypes = require(NetworkingContacts.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config): networkRequestsTypes.RequestThunks
	return {
		UploadContactsByUser = createUploadContactsByUser(config),
		FindContactFriends = createFindContactFriends(config),
		GetContactEntitiesByContactId = createGetContactEntitiesByContactId(config),
	}
end
