local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagFixInspectAndBuyPerformFetch = require(InspectAndBuyFolder.Flags.FFlagFixInspectAndBuyPerformFetch)

local requiredServices = {
	Network,
}

local keyMapper
if FFlagFixInspectAndBuyPerformFetch then
	keyMapper = createInspectAndBuyKeyMapper("getFavoriteForBundle")
else
	keyMapper = function(bundleId)
		return "inspectAndBuy.getFavoriteForBundle." ..tostring(bundleId)
	end
end

--[[
	Gets the favorite count of an asset.
]]
local function GetFavoriteForBundle(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key
		if FFlagFixInspectAndBuyPerformFetch then
			key = keyMapper(store:getState().storeId, bundleId)
		else
			key = keyMapper(bundleId)
		end

		return PerformFetch.Single(key, function(fetchSingleStore)
			return network.getFavoriteForBundle(bundleId):andThen(
				function(results)
					-- Endpoint returns 'null' if item isn't favorited.
					if results == "null" then
						store:dispatch(SetFavoriteBundle(tostring(bundleId), false))
					else
						store:dispatch(SetFavoriteBundle(tostring(bundleId), true))
					end
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetFavoriteForBundle