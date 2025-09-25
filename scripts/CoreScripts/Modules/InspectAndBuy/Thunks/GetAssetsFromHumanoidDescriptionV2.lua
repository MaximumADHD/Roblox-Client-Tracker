--!nonstrict

--[[
    Thunk to fetch avatar preview details from a humanoid description model
]]
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local SetEquippedAssets = require(InspectAndBuyFolder.Actions.SetEquippedAssets)
local Constants = require(InspectAndBuyFolder.Constants)
local GetAvatarPreview = require(InspectAndBuyFolder.Thunks.GetAvatarPreview)

local requiredServices = {}

local function getAssetIds(humanoidDescription)
	local assets = {}

	local headAssetParsed = false

	for assetTypeId, name in Constants.AssetTypeIdStringToHumanoidDescriptionProp do
		if Constants.AssetTypeIdToAccessoryTypeEnum[assetTypeId] == nil then
			local assetIds = humanoidDescription[name] or ""

			--[[
				The avatar preview API does not allow duplicate asset IDs to be passed in.
				The humanoid description contains attributes for both classic and dynamic heads.
				If a head asset  (dynamic or classic)has already been encountered, it should not
				be added again when parsing further asset IDs.

				It appears the engine humanoid description stores the asset id of the head twice - 
				if a classic head is equipped, the dynamic head attribute will also have this id,
				and visa versa.
			]]
			local isHeadAsset = assetTypeId == tostring(Enum.AssetType.Head.Value)
				or assetTypeId == tostring(Enum.AssetType.DynamicHead.Value)
			if headAssetParsed and isHeadAsset then
				continue
			end
			if isHeadAsset then
				headAssetParsed = true
			end
			for _, id in string.split(assetIds) do
				if tonumber(id) and id ~= "0" then
					table.insert(assets, AssetInfo.fromHumanoidDescription(id))
				end
			end
		end
	end

	local accessories = humanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
	for _, accessory in accessories do
		assets[#assets + 1] = AssetInfo.fromHumanoidDescriptionAccessory(accessory)
	end

	local emotes = humanoidDescription:GetEmotes()

	for _, emote in emotes do
		for _, assetId in emote do
			assets[#assets + 1] = AssetInfo.fromHumanoidDescription(assetId)
		end
	end

	return assets
end

--[[
	Given a humanoid description object, parse through the asset ids and get information for each asset.
    The Avatar Inspect API should return a list of assets and bundles available for purchase based off
    the humanoid description.
]]
local function GetAssetsFromHumanoidDescriptionV2(humanoidDescription, isForLocalPlayer)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local assets = getAssetIds(humanoidDescription)
		if not isForLocalPlayer then
			store:dispatch(GetAvatarPreview(assets))
		else
			store:dispatch(SetEquippedAssets(assets))
		end
	end)
end

return GetAssetsFromHumanoidDescriptionV2
