local Plugin = script.Parent.Parent.Parent

local SetPluginInfo = require(Plugin.Src.Actions.SetPluginInfo)
--local NetworkError = require(Plugin.Core.Actions.NetworkError)


return function(apiImpl, assetIds, plugins)
	return function(store)
		return apiImpl.Develop.v1.Plugins(assetIds):andThen(function(result)
			-- HTTP Requests complain if callbacks yield, so spawn this handler
			spawn(function()
				local response = result.responseBody
				store:dispatch(SetPluginInfo(plugins, response.data))
			end)
		end, function(_)
			--print("Failed result", err.responseBody)
			--store:dispatch(NetworkError(err))
		end)
	end
end
