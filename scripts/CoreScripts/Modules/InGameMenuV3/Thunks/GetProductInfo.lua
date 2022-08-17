local CorePackages = game:GetService("CorePackages")
local MarketplaceService =  game:GetService("MarketplaceService")

local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InGameMenu = script.Parent.Parent
local AssetInfo = require(InGameMenu.Models.AssetInfo)
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)

local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)
local keyMapper = createInspectAndBuyKeyMapper("getProductInfo")

--[[
	Get the product info of a product given its product id. Will call MarketplaceService:GetProductInfo().
]]
local function GetProductInfo(id)
	return function(store)
		local storeId = store:getState().inspectAndBuy.StoreId
		return PerformFetch.Single(keyMapper(storeId, id), function()
			return Promise.new(function(resolve, reject)
				local success, result = pcall(function()
					return MarketplaceService:GetProductInfo(id)
				end)

				if success then
					resolve(result)
				else
					reject("Failure in getProductInfo: ", tostring(result))
				end
			end):andThen(
				function(result)
					local assetInfo = AssetInfo.fromGetProductInfo(result)
					store:dispatch(SetAssets({assetInfo}))
				end)
		end)(store)
	end
end

return GetProductInfo