local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getProductInfo")

--[[
	Get the product info of a product given its product id. Will call MarketplaceService:GetProductInfo().
]]
local function GetProductInfo(id)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, id)

		return PerformFetch.Single(key, function()
			return network.getProductInfo(id):andThen(
				function(results)
					local assetInfo = AssetInfo.fromGetProductInfo(results)
					store:dispatch(SetAssets({assetInfo}))
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetProductInfo