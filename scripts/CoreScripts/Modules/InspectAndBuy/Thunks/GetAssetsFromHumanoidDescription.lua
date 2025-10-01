--!nonstrict

local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local GetProductInfo = require(InspectAndBuyFolder.Thunks.GetProductInfo)
local GetVersionInfo = require(InspectAndBuyFolder.Thunks.GetVersionInfo)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetEquippedAssets = require(InspectAndBuyFolder.Actions.SetEquippedAssets)
local Constants = require(InspectAndBuyFolder.Constants)
local GetAssetBundles = require(InspectAndBuyFolder.Thunks.GetAssetBundles)
local BatchGetAssets = require(InspectAndBuyFolder.Thunks.BatchGetAssets)

local FFlagAXEnableRegionalFilteringofAssets = require(InspectAndBuyFolder.Flags.FFlagAXEnableRegionalFilteringofAssets)

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
			if FFlagAXEnableRegionalFilteringofAssets then
				store:dispatch(BatchGetAssets(assets))
			else
				-- TODO: Use `Promise.allSettled` instead of `store:dispatch` for `GetProductInfo` and `GetAssetBundles`
				for _, asset in ipairs(assets) do
					coroutine.wrap(function()
						store:dispatch(GetProductInfo(asset.assetId))

						if asset.parentBundleId == nil then
							-- Because the call are made concurrently, and all the calls are made almost at the same time.
							-- Thus, any code changes related to GetAssetBundles, we need to consider the concurrency & race condition.
							store:dispatch(GetAssetBundles(asset.assetId))
						end

						--[[
						FIXME(dbanks)
						2023/12/07
						See https://roblox.atlassian.net/browse/AVBURST-12905
						This will be changed once backend sends "creating universe" with asset details.
						Either GetProductInfo will get us the "creating universe" id, or we hit different/better
						endpoint (like generic "get asset details" endpoint to this id.)
					--]]
						store:dispatch(GetVersionInfo(asset.assetId))
					end)()
				end
				store:dispatch(SetAssets(assets))
			end
		else
			store:dispatch(SetEquippedAssets(assets))
		end
	end)
end

return GetAssetsFromHumanoidDescription
