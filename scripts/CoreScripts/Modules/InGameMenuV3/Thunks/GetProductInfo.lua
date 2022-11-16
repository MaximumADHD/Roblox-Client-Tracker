local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InGameMenu = script.Parent.Parent
local AssetInfo = require(InGameMenu.Models.AssetInfo)
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)

local keyMapper = createInspectAndBuyKeyMapper("getProductInfo")

--[[
	Get the product info of a product given its product id. Will call MarketplaceService:GetProductInfo().
]]
local function GetProductInfo(id)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]
		local key = keyMapper(store:getState().inspectAndBuy.StoreId, id)

		return PerformFetch.Single(key, function()
			return network.getProductInfo(id):andThen(
				function(results)
					local asset = AssetInfo.fromGetProductInfo(results)
					store:dispatch(SetAssets({asset}))
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetProductInfo