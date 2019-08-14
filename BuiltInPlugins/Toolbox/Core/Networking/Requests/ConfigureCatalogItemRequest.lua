local Plugin = script.Parent.Parent.Parent.Parent

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetCurrentScreen = require(Plugin.Core.Actions.SetCurrentScreen)
local UploadResult = require(Plugin.Core.Actions.UploadResult)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local ConfigureSalesRequest = require(Plugin.Core.Networking.Requests.ConfigureSalesRequest)

local function createConfigDataTable(nameWithoutExtension, description)
	return {
		name = nameWithoutExtension,
		description = description,
		genres = {
			"all"
		}
	}
end

return function(networkInterface, assetId, nameWithoutExtension, description, fromStatus, toStatus, fromPrice, toPrice)
	return function(store)
		-- this thunk should never be called if names and descriptions exceed their maximum lengths, so we don't need to trim the strings here (just precautionary)
		nameWithoutExtension = string.sub(nameWithoutExtension, 1, AssetConfigConstants.NAME_CHARACTER_LIMIT)
		description = string.sub(description, 1, AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT)

		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))

		local handlerFunc = function(response)
			store:dispatch(ConfigureSalesRequest(networkInterface, assetId, fromStatus, toStatus, fromPrice, toPrice))
		end

		local errorFunc = function(response)
			if DebugFlags.shouldDebugWarnings() then
				warn(("Lua toolbox: Could not configure catalog item"))
			end
			store:dispatch(NetworkError({ responseBody = response }))
			store:dispatch(UploadResult(false))
		end
		networkInterface:configureCatalogItem(assetId, createConfigDataTable(nameWithoutExtension, description)):andThen(handlerFunc, errorFunc)
	end
end