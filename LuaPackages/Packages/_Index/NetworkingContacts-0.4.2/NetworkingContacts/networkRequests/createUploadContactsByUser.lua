local NetworkingContacts = script.Parent.Parent
local API_URL = require(NetworkingContacts.API_URL)
local networkRequestsTypes = require(NetworkingContacts.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "UploadContactsByUser" },
		function(requestBuilder: any, contacts: networkRequestsTypes.UploadContactsByUser)
			return requestBuilder(API_URL):path("contacts-api"):path("v1"):path("contacts"):body({
				contacts = contacts,
			})
		end
	)
end
