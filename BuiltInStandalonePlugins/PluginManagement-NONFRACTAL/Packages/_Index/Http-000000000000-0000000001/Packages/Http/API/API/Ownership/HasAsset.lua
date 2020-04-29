--[[
	Returns information about the list of provided pluginIds

	https://api.roblox.com/ownership/hasasset?assetId=144358935&userId=48103520
	Documented at : https://develop.roblox.com/docs/

]]

local Http = script.Parent.Parent.Parent.Parent
local BaseUrl = require(Http.BaseUrl)

return function(networkingImpl)
	return function(assetId, userId)
		assert(tonumber(assetId) > 0, "Expected assetId to be a positive number.")
		assert(tonumber(userId) > 0,  "Expected userId to be a positive number.")

		local idArgs = BaseUrl.makeQueryString({
			assetId = assetId,
			userId = userId,
		})
		local url = string.format("%sownership/hasasset?%s", BaseUrl.API_URL, idArgs)

		local httpPromise = networkingImpl:get(url)
		return networkingImpl:handleRetry(httpPromise)
	end
end