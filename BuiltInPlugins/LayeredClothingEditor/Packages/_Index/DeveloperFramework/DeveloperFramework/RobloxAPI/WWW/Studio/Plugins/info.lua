--[[
	This endpoint returns HTML, use its url to open external windows

	Example:
	https://www.roblox.com/studio/plugins/info?assetId=745786060
]]

local FFlagDevFrameworkRemovePluginInfoEndpoint = game:GetFastFlag("DevFrameworkRemovePluginInfoEndpoint")

-- _ : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(_, baseUrl)
	-- assetId : (number/string) a model's assetID
	return function(assetId)
		if FFlagDevFrameworkRemovePluginInfoEndpoint then
			error("Plugins.Info endpoint removed with FFlagDevFrameworkRemovePluginInfoEndpoint")
		else
		assert(tonumber(assetId) > 0, "Expected assetId to be a positive number")

		local url = baseUrl.compose(baseUrl.BASE_URL, "studio/plugins/info", {
			assetId = assetId
		})

		return {
			getUrl = function()
				return url
			end,
		}
	end
end
end