--!nonstrict

local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local GetProductInfo = require(InspectAndBuyFolder.Thunks.GetProductInfo)
local GetVersionInfo = require(InspectAndBuyFolder.Thunks.GetVersionInfo)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetEquippedAssets = require(InspectAndBuyFolder.Actions.SetEquippedAssets)
local Constants = require(InspectAndBuyFolder.Constants)

local FFlagAttributionInInspectAndBuy = require(InspectAndBuyFolder.Flags.FFlagAttributionInInspectAndBuy)

local requiredServices = {}

local function getAssetIds(humanoidDescription)
	local assets = {}

	for assetTypeId, name in pairs(Constants.AssetTypeIdStringToHumanoidDescriptionProp) do
		if Constants.AssetTypeIdToAccessoryTypeEnum[assetTypeId] == nil then
			local assetIds = humanoidDescription[name] or ""
			for _, id in pairs(string.split(assetIds)) do
				if tonumber(id) and id ~= "0" then
					table.insert(assets, AssetInfo.fromHumanoidDescription(id))
				end
			end
		end
	end

	local accessories = humanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
	for _, accessory in pairs(accessories) do
		assets[#assets + 1] = AssetInfo.fromHumanoidDescription(accessory.AssetId)
	end

	local emotes = humanoidDescription:GetEmotes()

	for _, emote in pairs(emotes) do
		for _, assetId in pairs(emote) do
			assets[#assets + 1] = AssetInfo.fromHumanoidDescription(assetId)
		end
	end

	return assets
end

--[[
	Given a humanoid description object, parse through the ids and get
	each assets information.
]]
local function GetAssetsFromHumanoidDescription(humanoidDescription, isForLocalPlayer)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local assets = getAssetIds(humanoidDescription)
		if not isForLocalPlayer then
			for _, asset in ipairs(assets) do
				coroutine.wrap(function()
					store:dispatch(GetProductInfo(asset.assetId))
					--[[
						TODO (lliu):
							1. Get if an asset belongs to a bundle via v1/assets/{bid}/bundles
									[FixMe in the future]: Backend doesn't provide a batch API to get if an assets belongs to a bundle, thus, we need to send multiple requests
							2. Get if a bundle is a limited bundle & collectibleItemId via above api
							3. Get bundle's lowestPrice economy info via collectibleItemId via marketplace-items/v1/items/details
							4. Deprecate the way to use MarketplaceService:GetProductInfo via economy v2/assets/{itemId}/details.
									Because this way doesn't support both bundles and assets.
									Enable the deprecation after all assets migrate to collectible system
					--]]

					if FFlagAttributionInInspectAndBuy then
						--[[
							FIXME(dbanks)
							2023/12/07
							See https://roblox.atlassian.net/browse/AVBURST-12905
							This will be changed once backend sends "creating universe" with asset details.
							Either GetProductInfo will get us the "creating universe" id, or we hit different/better
							endpoint (like generic "get asset details" endpoint to this id.)
						--]]
						store:dispatch(GetVersionInfo(asset.assetId))
					end
				end)()
			end
			store:dispatch(SetAssets(assets))
		else
			store:dispatch(SetEquippedAssets(assets))
		end
	end)
end

return GetAssetsFromHumanoidDescription
