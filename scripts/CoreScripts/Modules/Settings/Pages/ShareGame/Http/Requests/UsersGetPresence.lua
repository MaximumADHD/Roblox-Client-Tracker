local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Url = require(ShareGame.Http.Url)
local Functional = require(ShareGame.Functional)

--[[
    This endpoint returns a promise that resolves to:
	{
		"userPresences": [
			{
				"userPresenceType": PresenceType,
				"lastLocation": "string",
				"placeId": 0,
				"rootPlaceId": 0,
				"gameId": "string",
				"userId": 0,
				"lastOnline": {
					"Ticks": 0
				}
			}
		]
	}

	Where the userPresenceType is defined as:

	public enum PresenceType
	{
		Offline = 0,
		Online = 1,
		InGame = 2,
		InStudio = 3
	}
]]

return function(networkImpl, userIds)
	local argTable = {
		userIds = Functional.Map(userIds, function(val)
			return tonumber(val)
		end)
	}
	local payload = networkImpl:jsonEncode(argTable)

	-- construct the url
	local url = string.format("%s/v1/presence/users",
		Url.PRESENCE_URL
	)

	return networkImpl:httpPostJson(url, payload)
end