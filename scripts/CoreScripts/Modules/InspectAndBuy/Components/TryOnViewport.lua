local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Constants = require(InspectAndBuyFolder.Constants)
local AvatarViewport = require(InspectAndBuyFolder.Components.AvatarViewport)
local GetHumanoidDescriptionFromCostumeId = require(InspectAndBuyFolder.Thunks.GetHumanoidDescriptionFromCostumeId)

local GetFFlagDisplayCollectiblesIcon = require(InspectAndBuyFolder.Flags.GetFFlagDisplayCollectiblesIcon)

local TryOnViewport = Roact.PureComponent:extend("TryOnViewport")

local function isPartOfBundleAndOffsale(assetInfo)
	return assetInfo and assetInfo.parentBundleId ~= nil and not assetInfo.isForSale or false
end

local function createDefaultHumanoidDescriptionAccessoryInfo(assetTypeId, assetId)
	return {
		AssetId = tonumber(assetId),
		Order = Constants.LayeredClothingOrder[assetTypeId],
		AccessoryType = Constants.AssetTypeIdToAccessoryTypeEnum[assetTypeId],
		IsLayered = Constants.LayeredAssetTypes[assetTypeId] ~= nil,
	}
end

function TryOnViewport:init()
	self.model = self.props.localPlayerModel
	self.model.HumanoidRootPart.Anchored = true
	self.humanoidDescriptions = {}
	self.humanoidDescriptionForLocalPlayer = self.model.Humanoid.HumanoidDescription
	self.state = {
		obtainedHumanoidDescriptions = {},
	}
end

function TryOnViewport:didMount()
	self.isMounted = true
end

function TryOnViewport:didUpdate(prevProps)
	local assetInfo = self.props.assetInfo
	local bundles = self.props.bundles
	local tryingOnInfo = self.props.tryingOnInfo
	local prevTryingOnInfo = prevProps.tryingOnInfo

	if tryingOnInfo ~= prevTryingOnInfo and tryingOnInfo.tryingOn and isPartOfBundleAndOffsale(assetInfo) then
		local bundleId = assetInfo.parentBundleId
		local costumeId = bundles[bundleId].costumeId

		if costumeId then
			-- Get the humanoid description of this bundle's costume.
			self.props.getHumanoidDescriptionFromCostumeId(costumeId, function(humanoidDescription)
				if self and self.isMounted then
					self.humanoidDescriptions[costumeId] = humanoidDescription
					self:setState({
						obtainedHumanoidDescriptions = Cryo.Dictionary.join(
							self.state.obtainedHumanoidDescriptions,
							{ [costumeId] = true }
						),
					})
				end
			end)
		end
	end
end

--[[
	If a bundle contains no costumeId, the humanoidDescription must be
	updated via interating through the bundles assets individually.
]]
function TryOnViewport:tryOnBundleWithoutCostumeId(bundleId, humanoidDescription)
	local includedTryOnAccessoryMap = {}
	local includedTryOnCategoryMap = {}
	local bundleHasLC = false
	-- First, construct mappings so we know which currently equipped accessories
	-- must be removed to make way for the try on accessories
	for _, assetId in pairs(self.props.bundles[bundleId].assetIds) do
		local assetInfo = self.props.assets[assetId]
		local accessoryType = Constants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId]
		if accessoryType then
			includedTryOnAccessoryMap[accessoryType] = true
			local category = Constants.AssetTypeToAssetCategory[assetInfo.assetTypeId]
			if category then
				includedTryOnCategoryMap[category] = true
			end
			bundleHasLC = true
		end
	end

	local accessories = humanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
	local tryOnAccessories = {}
	-- If any of the try on assets in the bundle are LC, reconstruct the accessories table for
	-- SetAccessories with the currently equipped accessories. Don't include any that
	-- match accessory type or category type of the new accessories wanting to be tried on
	if bundleHasLC then
		for _, accessory in pairs(accessories) do
			local accessoryAssetType = Constants.AccessoryTypeEnumToAssetTypeId[accessory.AccessoryType]
			local accessoryCategory = Constants.AssetTypeToAssetCategory[accessoryAssetType]
			local ofDifferentCategory = not accessoryCategory or not includedTryOnCategoryMap[accessoryCategory]

			if not includedTryOnAccessoryMap[accessory.AccessoryType] and ofDifferentCategory then
				table.insert(tryOnAccessories, accessory)
			end
		end
	end

	-- Finally, iterate through the assets and include them in the humanoid description
	for _, assetId in pairs(self.props.bundles[bundleId].assetIds) do
		local assetInfo = self.props.assets[assetId]
		if Constants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId] then
			local tryOnAccessoryInfo = createDefaultHumanoidDescriptionAccessoryInfo(assetInfo.assetTypeId, assetId)
			table.insert(tryOnAccessories, tryOnAccessoryInfo)
		else
			humanoidDescription[Constants.AssetTypeIdStringToHumanoidDescriptionProp[assetInfo.assetTypeId]] = assetId
		end
	end

	if bundleHasLC then
		humanoidDescription:SetAccessories(tryOnAccessories, --[[includeRigidAccessories =]] true)
	end

	return humanoidDescription
end

function TryOnViewport:render()
	local assetInfo = self.props.assetInfo
	local bundles = self.props.bundles
	local tryingOnInfo = self.props.tryingOnInfo
	local humanoidDescription = self.humanoidDescriptionForLocalPlayer:Clone()
	local visible = tryingOnInfo.tryingOn
	local setScrollingEnabled = self.props.setScrollingEnabled

	if tryingOnInfo and tryingOnInfo.tryingOn then
		if isPartOfBundleAndOffsale(assetInfo) then
			local bundleId = assetInfo.parentBundleId
			local costumeId = bundles[bundleId].costumeId

			if costumeId then
				-- if the bundle includes a costumeId, the try on can be
				-- done via the costumeHumanoidDescription
				local costumeHumanoidDescription = self.humanoidDescriptions[costumeId]
				visible = self.state.obtainedHumanoidDescriptions[costumeId] == true
				if costumeHumanoidDescription then
					-- Overwrite the inspecter's assets with any asset from the costume.
					for assetTypeId, name in pairs(Constants.AssetTypeIdStringToHumanoidDescriptionProp) do
						if
							Constants.AssetTypeIdToAccessoryTypeEnum[assetTypeId] == nil
							and tonumber(costumeHumanoidDescription[name])
							and tostring(costumeHumanoidDescription[name]) ~= "0"
						then
							humanoidDescription[name] = costumeHumanoidDescription[name]
						end
					end

					local costumeAccessories =
						costumeHumanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
					humanoidDescription:SetAccessories(costumeAccessories, --[[includeRigidAccessories =]] true)
				end
			else
				humanoidDescription = self:tryOnBundleWithoutCostumeId(bundleId, humanoidDescription)
			end
		else
			-- Cannot set humanoidDescription value directly if the tryingOn asset is an accessory
			if Constants.AssetTypeIdToAccessoryTypeEnum[tryingOnInfo.assetTypeId] then
				local tryOnAccessory = Constants.AssetTypeIdToAccessoryTypeEnum[tryingOnInfo.assetTypeId]
				local accessories = humanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
				local tryOnAccessories = {}
				-- Iterate through the currently equipped accessories and add them to a new table to be used in
				-- SetAccessories. Only insert accessories that are not of the same type as the trying on accessory and
				-- are not of the same layered clothing category. Essentially, this will replace all accessories of that
				-- category with the trying on accessory
				for _, accessory in pairs(accessories) do
					local accessoryAssetType = Constants.AccessoryTypeEnumToAssetTypeId[accessory.AccessoryType]
					local tryOnAccessoryCategory = Constants.AssetTypeToAssetCategory[tryingOnInfo.assetTypeId]
					local accessoryCategory = Constants.AssetTypeToAssetCategory[accessoryAssetType]
					local ofDifferentCategory = not tryOnAccessoryCategory
						or accessoryCategory ~= tryOnAccessoryCategory

					if accessory.AccessoryType ~= tryOnAccessory and ofDifferentCategory then
						table.insert(tryOnAccessories, accessory)
					end
				end
				-- format and add our trying on accessory to the table of all accessories to be used in SetAccessories
				local tryOnAccessoryInfo =
					createDefaultHumanoidDescriptionAccessoryInfo(tryingOnInfo.assetTypeId, tryingOnInfo.assetId)
				table.insert(tryOnAccessories, tryOnAccessoryInfo)
				humanoidDescription:SetAccessories(tryOnAccessories, --[[includeRigidAccessories =]] true)
			else
				humanoidDescription[Constants.AssetTypeIdStringToHumanoidDescriptionProp[tryingOnInfo.assetTypeId]] =
					tryingOnInfo.assetId
			end
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, GetFFlagDisplayCollectiblesIcon() and Constants.DetailsThumbnailFrameHeight or 300),
		LayoutOrder = 2,
		Visible = visible,
	}, {
		AvatarViewport = Roact.createElement(AvatarViewport, {
			size = UDim2.new(0.75, 0, 1, 0),
			position = UDim2.new(0.5, 0, 0.5, 0),
			humanoidDescription = humanoidDescription,
			model = self.model,
			visible = true,
			backgroundTransparency = 1,
			setScrollingEnabled = setScrollingEnabled,
		}),
	})
end

function TryOnViewport:willUnmount()
	self.isMounted = false
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local assetId = state.detailsInformation.assetId

	return {
		assets = state.assets,
		assetInfo = state.assets[assetId],
		bundles = state.bundles,
		tryingOnInfo = state.tryingOnInfo,
	}
end, function(dispatch)
	return {
		getHumanoidDescriptionFromCostumeId = function(costumeId, callback)
			return dispatch(GetHumanoidDescriptionFromCostumeId(costumeId, callback))
		end,
	}
end)(TryOnViewport)
