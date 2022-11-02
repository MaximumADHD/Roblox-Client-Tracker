local NetworkingContacts = script.Parent.Parent
local API_URL = require(NetworkingContacts.API_URL)
local networkRequestsTypes = require(NetworkingContacts.Types.networkRequestsTypes)
-- TODO SACQ-93 when endpoint is stable, switch to fixed value
game:DefineFastString("ContactImporterFindFriendsUrl", "contacts")
local pathValue = game:GetFastString("ContactImporterFindFriendsUrl")

return function(config: networkRequestsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "FindContactFriends" }, function(requestBuilder: any)
		return requestBuilder(API_URL):path("contacts-api"):path("v1"):path(pathValue)
	end)
end
