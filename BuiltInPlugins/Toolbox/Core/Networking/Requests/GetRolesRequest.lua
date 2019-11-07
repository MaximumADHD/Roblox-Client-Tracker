local Plugin = script.Parent.Parent.Parent.Parent

local Promise = require(Plugin.Libs.Http.Promise)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetCatalogItemCreator = require(Plugin.Core.Actions.SetCatalogItemCreator)
local SetAllowedAssetTypes =  require(Plugin.Core.Actions.SetAllowedAssetTypes)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

return function(networkInterface)
	return function(store)
		if networkInterface and networkInterface.getMetaData then -- this check was only added for when running the unit test (networkInterface and networkInterface.getMetaData were never nil otherwise)
			local handlerFunc = function(response)
				if not game:GetFastFlag("CMSRemoveUGCContentEnabledBoolean") then
					local isCreator = response.responseBody and response.responseBody.isUserGeneratedCatalogContentEnabled or false
					store:dispatch(SetCatalogItemCreator(isCreator))
				end

				local allowedAssetTypesForRelease = response.responseBody and response.responseBody.allowedAssetTypesForRelease or {}
				local allowedAssetTypesForUpload = response.responseBody and response.responseBody.allowedAssetTypeForUpload or {}
				store:dispatch(SetAllowedAssetTypes(allowedAssetTypesForRelease, allowedAssetTypesForUpload))
			end

			local errorFunc = function(result)
				if DebugFlags.shouldDebugWarnings() then
					warn(("Lua toolbox: Could not get roleset back-end data"))
				end
				store:dispatch(SetCatalogItemCreator(false))
				store:dispatch(NetworkError(result))
			end
			return networkInterface:getMetaData():andThen(handlerFunc, errorFunc)
		else
			store:dispatch(SetCatalogItemCreator(false))
		end

		return Promise.reject()
	end
end