--[[
	Given a humanoid description, get all of the asset equipped to that
	humanoid. This will set those assets in the reducer and get the product
	info for those assets
]]
local InGameMenu = script.Parent.Parent
local GetProductInfo = require(InGameMenu.Thunks.GetProductInfo)
local AssetInfo = require(InGameMenu.Models.AssetInfo)
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
local Constants = require(InGameMenu.InspectAndBuyConstants)
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)

local function getAssetIds(humanoidDescription: HumanoidDescription)
	local assets = {}

	for assetTypeId, name in pairs(Constants.HumanoidDescriptionIdToName) do
		-- assets that have an associated AccessoryTypeEnum will be added to the assets
		-- table through the GetAccessories function. Avoid adding them here by indexing into
		-- the humanoid description
		if Constants.AssetTypeIdToAccessoryTypeEnum[assetTypeId] == nil then
			local assetIds = (humanoidDescription :: any)[name] or ""
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
			table.insert(assets, AssetInfo.fromHumanoidDescription(assetId))
		end
	end

	return assets
end

local function GetAssetsFromHumanoidDescription(humanoidDescription)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local assets = getAssetIds(humanoidDescription)
		for _, asset in ipairs(assets) do
			task.spawn(function()
				store:dispatch(GetProductInfo(asset.assetId))
			end)
		end
		store:dispatch(SetAssets(assets))
	end)
end

return GetAssetsFromHumanoidDescription
