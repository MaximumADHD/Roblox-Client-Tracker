--[[
	A request used to determine if the current Studio user owns an asset.

	Params:
		networkInterface = The NetworkInterface impl.
		assetId = The asset's id.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local getUserId = require(Plugin.Core.Util.getUserId)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetOwnsAsset = require(Plugin.Core.Actions.SetOwnsAsset)

local FFlagToolboxWaitForPluginOwnedStatus = game:GetFastFlag("ToolboxWaitForPluginOwnedStatus")

local API
if FFlagToolboxWaitForPluginOwnedStatus then
	local Framework = require(Plugin.Libs.Framework)
	local RobloxAPI = Framework.RobloxAPI
	local Networking = Framework.Http.Networking
	API = RobloxAPI.new({
		networking = Networking.new({
			isInternal = true,
			loggingLevel = DebugFlags.shouldDebugUrls() and 1 or nil,
		})
	})
end

return function(networkInterface, assetId)
	return function(store)
		local state = store:getState()
		local cachedOwnedStatus = state.purchase.cachedOwnedAssets[tostring(assetId)]
		if cachedOwnedStatus ~= nil then
			store:dispatch(SetOwnsAsset(cachedOwnedStatus, assetId))
			return
		end

		local myUserId = getUserId()

		if FFlagToolboxWaitForPluginOwnedStatus then
			-- Use the DeveloperFramework API to get retry support, and so we can gradually remove Toolbox NetworkInterface
			API.API.Ownership.hasAsset(assetId, myUserId):makeRequest():andThen(function(ownershipResults)
				local ownsAsset = tostring(ownershipResults.responseBody) == "true"
				store:dispatch(SetOwnsAsset(ownsAsset, assetId))
			end, function(result)
				if DebugFlags.shouldDebugWarnings() then
					warn("Could not get asset ownership")
				end

				store:dispatch(NetworkError(result))
			end)
		else
			return networkInterface:getOwnsAsset(assetId, myUserId):andThen(function(result)
				local ownsAsset = result.responseBody == "true"
				store:dispatch(SetOwnsAsset(ownsAsset, assetId))
			end, function(result)
				if DebugFlags.shouldDebugWarnings() then
					warn("Could not get asset ownership")
				end

				store:dispatch(NetworkError(result))
			end)
		end
	end
end
