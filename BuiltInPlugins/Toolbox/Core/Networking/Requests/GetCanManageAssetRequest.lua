--[[
	A request used to determine if the current Studio user can manage an asset.

	Params:
		networkInterface = The NetworkInterface impl.
		assetId = The asset's id.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local getUserId = require(Plugin.Core.Util.getUserId)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetCanManageAsset = require(Plugin.Core.Actions.SetCanManageAsset)

return function(networkInterface, assetId)
	return function(store)
		local state = store:getState()
		local cachedCanManage = state.assets.manageableAssets[tostring(assetId)]
		if cachedCanManage ~= nil then
			return
		end

		local myUserId = getUserId()
		return networkInterface:getCanManageAsset(assetId, myUserId):andThen(function(result)
			local canManage = result.responseBody and result.responseBody.Success
				and result.responseBody.CanManage
			store:dispatch(SetCanManageAsset(canManage, assetId))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Could not get canManage status")
			end

			store:dispatch(NetworkError(result))
		end)
	end
end
