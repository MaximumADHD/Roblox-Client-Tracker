local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local Thunk = require(script.Parent.Parent.Thunk)
local Promise = require(script.Parent.Parent.Promise)

local Network = require(script.Parent.Parent.Services.Network)
local Analytics = require(script.Parent.Parent.Services.Analytics)

local StartPurchase = require(script.Parent.Parent.Actions.StartPurchase)
local ErrorOccurred = require(script.Parent.Parent.Actions.ErrorOccurred)

local getToolAsset = require(script.Parent.Parent.Network.getToolAsset)

local completePurchase = require(script.Parent.completePurchase)

local performPurchase = require(script.Parent.Parent.Network.performPurchase)

-- Only tools can be equipped on purchase
local ASSET_TYPE_TOOL = 19

local requiredServices = {
	Network,
	Analytics,
}

local function purchaseItem()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local analytics = services[Analytics]

		store:dispatch(StartPurchase(Workspace.DistributedGameTime))

		local state = store:getState()

		local requestId = HttpService:GenerateGUID(false)

		local id = state.product.id
		local infoType = state.product.infoType
		local equipIfPurchased = state.product.equipIfPurchased

		local salePrice = state.productInfo.price
		local assetTypeId = state.productInfo.assetTypeId
		local productId = state.productInfo.productId

		return performPurchase(network, infoType, productId, salePrice, requestId)
			:andThen(function(result)
				--[[
					If the purchase was successful, we signal success,
					record analytics, and equip the item if needed
				]]
				store:dispatch(completePurchase())

				analytics.signalPurchaseSuccess(id, infoType, salePrice, result)

				if equipIfPurchased and assetTypeId == ASSET_TYPE_TOOL then
					return getToolAsset(network, id)
						:andThen(function(tool)
							if tool then
								tool.Parent = Players.LocalPlayer.Backpack
							end
						end)
				end

				return Promise.resolve()
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return purchaseItem