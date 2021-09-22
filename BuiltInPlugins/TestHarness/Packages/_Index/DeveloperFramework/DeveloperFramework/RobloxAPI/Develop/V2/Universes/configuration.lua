--[[
	Returns a list of packages given a universe ID

	Example
	GET or PATCH https://develop.roblox.com/v2/universes/1552514118/configuration

	Documented at : https://develop.roblox.com/docs#!/UniverseSettings/patch_v2_universes_universeId_configuration

	Returns a JSON table with these fields :
	{
		"allowPrivateServers": true,
		"privateServerPrice": 0,
		"optInRegions": [
			{
				"region": "Unknown",
				"status": "string"
			}
		],
		"id": 0,
		"name": "string",
		"description": "string",
		"universeAvatarType": "MorphToR6",
		"universeAnimationType": "Standard",
		"universeCollisionType": "InnerBox",
		"universeJointPositioningType": "Standard",
		"isArchived": true,
		"isFriendsOnly": true,
		"genre": "All",
		"playableDevices": [
			"Computer"
		],
		"isForSale": true,
		"price": 0,
		"universeAvatarAssetOverrides": [
			{
				"assetID": 0,
				"assetTypeID": 0,
				"isPlayerChoice": true
			}
		],
		"universeAvatarMinScales": {
			"height": 0,
			"width": 0,
			"head": 0,
			"depth": 0,
			"proportion": 0,
			"bodyType": 0
		},
		"universeAvatarMaxScales": {
			"height": 0,
			"width": 0,
			"head": 0,
			"depth": 0,
			"proportion": 0,
			"bodyType": 0
		},
		"studioAccessToApisAllowed": true,
		"permissions": {
			"IsThirdPartyTeleportAllowed": true,
			"IsThirdPartyAssetAllowed": true,
			"IsThirdPartyPurchaseAllowed": true
		}
	}
]]

local FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 = game:GetFastFlag("PublishPlaceAsUseDevFrameworkRobloxAPI2")
local HttpService = game:GetService("HttpService")

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	-- universeId : id of universe
	-- body : the configuration to patch the universe with
	return function(universeId, body)
		assert(type(universeId) == "number",
			string.format("universeId must be of type number, received %s", type(universeId)))
		if body ~= nil then
			assert(type(body) == "table",
				string.format("body must be of type table, received %s", type(body)))
		end

		local url = baseUrl.composeUrl(baseUrl.DEVELOP_URL, string.format("v2/universes/%d/configuration", universeId))

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				if FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 then
					if body == nil then
						local httpPromise = networkingImpl:get(url)
						local retryPromise = networkingImpl:handleRetry(httpPromise)
						return networkingImpl:parseJson(retryPromise)
					else
						local httpPromise = networkingImpl:patch(url, HttpService:JSONEncode(body), {
							["Content-Type"] = "application/json",
						})
						return networkingImpl:parseJson(httpPromise)
					end
				else
					local httpPromise = networkingImpl:get(url)
					local retryPromise = networkingImpl:handleRetry(httpPromise)
					return networkingImpl:parseJson(retryPromise)
				end
			end,
		}
	end
end