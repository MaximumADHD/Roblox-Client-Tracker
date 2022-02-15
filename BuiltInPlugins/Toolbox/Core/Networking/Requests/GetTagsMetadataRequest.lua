local Plugin = script.Parent.Parent.Parent.Parent

local SetTagsMetadata = require(Plugin.Core.Actions.SetTagsMetadata)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

return function(networkInterface)
	return function(store)
		local handlerFunc = function(response)
			local isItemTagsFeatureEnabled = response.responseBody
				and response.responseBody.isItemTagsFeatureEnabled == true
			local enabledAssetTypes = response.responseBody and response.responseBody.enabledAssetTypes or {}
			local maximumItemTagsPerItem = response.responseBody and response.responseBody.maximumItemTagsPerItem or 0
			store:dispatch(SetTagsMetadata(isItemTagsFeatureEnabled, enabledAssetTypes, maximumItemTagsPerItem))
		end

		local errorFunc = function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Lua toolbox: Could not get tags metadata")
			end
		end
		return networkInterface:getTagsMetadata():andThen(handlerFunc, errorFunc)
	end
end
