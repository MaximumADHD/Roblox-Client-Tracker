--[[
	Post to deactivate a universe

	Example
	POST https://develop.roblox.com/v1/universes/2681549088/deactivate

	Documented at : https://develop.roblox.com/docs#!/Universes/post_v1_universes_universeId_deactivate

	Returns empty table response body:
	{}
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	-- universeId : id of universe
	return function(universeId)
		assert(type(universeId) == "number",
			string.format("universeId must be number, received %s", type(universeId)))

		local url = baseUrl.composeUrl(baseUrl.DEVELOP_URL, string.format("v1/universes/%d/deactivate", universeId))

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise = networkingImpl:post(url, "")
				return networkingImpl:parseJson(httpPromise)
			end
		}
	end
end
