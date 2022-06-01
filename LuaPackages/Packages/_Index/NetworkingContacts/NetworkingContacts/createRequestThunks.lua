local NetworkingContacts = script.Parent
local networkRequests = NetworkingContacts.networkRequests
local createUploadContactsByUser = require(networkRequests.createUploadContactsByUser)
local createFindContactFriends = require(networkRequests.createFindContactFriends)
local networkRequestsTypes = require(NetworkingContacts.Shared.networkRequestsTypes)

return function(config: networkRequestsTypes.Config): networkRequestsTypes.RequestThunks
	return {
		UploadContactsByUser = createUploadContactsByUser(config),
		FindContactFriends = createFindContactFriends(config),
	}
end
