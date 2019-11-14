local Plugin = script.Parent.Parent.Parent.Parent

local Promise = require(Plugin.Libs.Http.Promise)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetCatalogItemCreator = require(Plugin.Core.Actions.SetCatalogItemCreator)
local SetAllowedAssetTypes =  require(Plugin.Core.Actions.SetAllowedAssetTypes)

local SetTagsMetadata = require(Plugin.Core.Actions.SetTagsMetadata)

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

				if game:GetFastFlag("CMSEnableCatalogTags") then
					local tagsHandlerFunc = function(response)
						local isItemTagsFeatureEnabled = response.responseBody and response.responseBody.isItemTagsFeatureEnabled == true
						local enabledAssetTypes = response.responseBody and response.responseBody.enabledAssetTypes or {}
						local maximumItemTagsPerItem = response.responseBody and response.responseBody.maximumItemTagsPerItem or 0
						store:dispatch(SetTagsMetadata(isItemTagsFeatureEnabled, enabledAssetTypes, maximumItemTagsPerItem))
					end

					local tagsErrorFunc = function(result)
						if DebugFlags.shouldDebugWarnings() then
							warn(("Lua toolbox: Could not get tags metadata"))
						end
					end

					return networkInterface:getTagsMetadata():andThen(tagsHandlerFunc, tagsErrorFunc)
				end
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