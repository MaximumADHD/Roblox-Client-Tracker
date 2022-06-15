local NetworkingContacts = script.Parent.Parent
local API_URL = require(NetworkingContacts.API_URL)
local networkRequestsTypes = require(NetworkingContacts.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetContactEntitiesByContactId" },
		function(requestBuilder: any, contactIds: networkRequestsTypes.GetContactEntitiesByContactId)
			return requestBuilder(API_URL):path("contacts-api"):path("v1"):path("contacts"):path("get-entities"):body({
				UserContactIds = contactIds,
			})
		end
	)
end
