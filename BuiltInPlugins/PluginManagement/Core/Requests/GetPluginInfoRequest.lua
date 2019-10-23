local Plugin = script.Parent.Parent.Parent

local SetPluginInfo = require(Plugin.Core.Actions.SetPluginInfo)
--local NetworkError = require(Plugin.Core.Actions.NetworkError)
local HttpService = game:GetService("HttpService")

local Urls = require(Plugin.Core.Util.Urls)

return function(networkObj, assetIds, plugins)
	return function(store)
		local targetUrl = Urls.constructGetPluginInfoUrl(assetIds)
		return networkObj:httpGet(targetUrl):andThen(function(result)
			local responseJson = result.responseBody
			local response = HttpService:JSONDecode(responseJson)

			store:dispatch(SetPluginInfo(plugins, response.data))
		end, function(result)
			--print("Failed result", result.responseBody)
			--store:dispatch(NetworkError(result))
		end)
	end
end
