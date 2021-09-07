--[[
	Updates the place configuration for the place given a place id
	Example
	PATCH https://develop.roblox.com/v1/places/1552514118/
	Documented at : https://develop.roblox.com/docs#!/Places/patch_v1_places_placeId
]]
local HttpService = game:GetService("HttpService")

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	-- placeId : id of place
	-- body : information to update the place configuration with
	return function(placeId, body)
		assert(type(placeId) == "number",
			string.format("placeId must be number, received %s", type(placeId)))
		assert(type(body) == "table",
			string.format("body must be of type table, received %s", type(body)))

		local url = baseUrl.composeUrl(baseUrl.DEVELOP_URL, string.format("v1/places/%d", placeId))

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise = networkingImpl:patch(url, HttpService:JSONEncode(body))
				return networkingImpl:parseJson(httpPromise)
			end,
		}
	end
end
