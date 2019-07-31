local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetFavoriteAsset = require(InspectAndBuyFolder.Actions.SetFavoriteAsset)

local requiredServices = {
	Network,
}

local function keyMapper(assetId)
	return "inspectAndBuy.getFavoriteForAsset." ..tostring(assetId)
end

--[[
	Gets whether the user has favorited an asset or not.
]]
local function GetFavoriteForAsset(assetId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		return PerformFetch.Single(keyMapper(assetId), function(fetchSingleStore)
			return network.getFavoriteForAsset(assetId):andThen(
				function(results)
					-- Endpoint returns 'null' if item isn't favorited.
					if results == "null" then
						store:dispatch(SetFavoriteAsset(tostring(assetId), false))
					else
						store:dispatch(SetFavoriteAsset(tostring(assetId), true))
					end
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetFavoriteForAsset