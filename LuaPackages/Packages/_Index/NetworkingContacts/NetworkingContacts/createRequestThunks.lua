local NetworkingContacts = script.Parent
local networkRequests = NetworkingContacts.networkRequests
local createUploadContactsByUser = require(networkRequests.createUploadContactsByUser)
local networkRequestsTypes = require(NetworkingContacts.Shared.networkRequestsTypes)

return function(config: networkRequestsTypes.Config): networkRequestsTypes.RequestThunks
	return {
		UploadContactsByUser = createUploadContactsByUser(config),
	}
end
