--[[
	Component rendered in the AssetDetailsPage of the InspectAndBuyPage
	when the try on button in the bottom bar is selected. This will
	mount a ViewportFrame in order to display a character with the relevant
	asset/bundle tried on.
]]

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Cryo)

local InGameMenu = script.Parent.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local IBConstants = require(InGameMenu.InspectAndBuyConstants)
local AvatarViewport = require(InGameMenu.Components.InspectAndBuyPage.AvatarViewport)
local GetHumanoidDescriptionFromCostumeId = require(InGameMenu.Thunks.GetHumanoidDescriptionFromCostumeId)

local TryOnViewport = Roact.PureComponent:extend("TryOnViewport")

local VIEWPORT_SIZE_RATIO = 9/16

TryOnViewport.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.integer),
	localPlayerModel = t.optional(t.table),
	setScrollingEnabled = t.callback,

	-- from mapStateToProps
	tryingOn = t.boolean,
	selectedItem = t.table,
	bundles = t.table,
	assets = t.table,
})

local function isPartOfBundleAndOffsale(assetInfo)
	return assetInfo and assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
		and not assetInfo.isForSale
end

local function createDefaultHumanoidDescriptionAccessoryInfo(assetTypeId, assetId)
	return {
		AssetId = tonumber(assetId),
		Order = IBConstants.LayeredClothingOrder[assetTypeId],
		AccessoryType = IBConstants.AssetTypeIdToAccessoryTypeEnum[assetTypeId],
		IsLayered = IBConstants.LayeredAssetTypes[assetTypeId] ~= nil,
	}
end

function TryOnViewport:init()
	self.model = self.props.localPlayerModel
	self.model.HumanoidRootPart.Anchored = true
	self.humanoidDescriptionForLocalPlayer = self.model.Humanoid.HumanoidDescription
	self.humanoidDescriptions = {}

	self:setState({
		obtainedHumanoidDescriptions = {}
	})
end

--[[
	Based on a bundle's assets, construct and return data regarding whether
	this bundle has LC. If it does, the returned tables will include information
	on which accessory types and category types are included as LC in the bundle
	respectively.
]]
function TryOnViewport:getTryOnBundleNoCostumeIdData(bundleId)
	local includedTryOnAccessoryMap = {}
	local includedTryOnCategoryMap = {}
	local bundleHasLC = false

	for _, assetId in pairs(self.props.bundles[bundleId].assetIds) do
		local assetInfo = self.props.assets[assetId]
		local accessoryType = IBConstants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId]
		if accessoryType then
			includedTryOnAccessoryMap[accessoryType] = true
			local category = IBConstants.AssetTypeToAssetCategory[assetInfo.assetTypeId]
			if category then
				includedTryOnCategoryMap[category] = true
			end
			bundleHasLC = true
		end
	end

	return includedTryOnAccessoryMap, includedTryOnCategoryMap, bundleHasLC
end

--[[
	Based on an accessories table and mappings dictating which categories/accessory types not to include,
	filter the accessories table to not include those categories/accessory types
]]
function TryOnViewport:getFilteredAccessoryList(accessories, includedTryOnCategoryMap, includedTryOnAccessoryMap)
	local tryOnAccessories = {}
	for _, accessory in pairs(accessories) do
		local accessoryAssetType = IBConstants.AccessoryTypeEnumToAssetTypeId[accessory.AccessoryType]
		local accessoryCategory = IBConstants.AssetTypeToAssetCategory[accessoryAssetType]
		local ofDifferentCategory = not accessoryCategory or not includedTryOnCategoryMap[accessoryCategory]

		if not includedTryOnAccessoryMap[accessory.AccessoryType] and ofDifferentCategory then
			table.insert(tryOnAccessories, accessory)
		end
	end

	return tryOnAccessories
end

--[[
	If a bundle contains no costumeId, the humanoidDescription must be
	updated via interating through the bundles assets individually.
]]
function TryOnViewport:tryOnBundleWithoutCostumeId(bundleId, humanoidDescription)
	-- First, construct mappings so we know which currently equipped accessories
	-- must be removed to make way for the try on accessories
	local includedTryOnAccessoryMap, includedTryOnCategoryMap, bundleHasLC = self:getTryOnBundleNoCostumeIdData(bundleId)

	local accessories = humanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
	local tryOnAccessories = {}
	-- If any of the try on assets in the bundle are LC, reconstruct the accessories table for
	-- SetAccessories with the currently equipped accessories. Don't include any that
	-- match accessory type or category type of the new accessories wanting to be tried on
	if bundleHasLC then
		tryOnAccessories = self:getFilteredAccessoryList(accessories, includedTryOnCategoryMap, includedTryOnAccessoryMap)
	end

	-- Finally, iterate through the assets and include them in the humanoid description 
	for _, assetId in pairs(self.props.bundles[bundleId].assetIds) do
		local assetInfo = self.props.assets[assetId]
		if IBConstants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId] then
			local tryOnAccessoryInfo = createDefaultHumanoidDescriptionAccessoryInfo(assetInfo.assetTypeId, assetId)
			table.insert(tryOnAccessories, tryOnAccessoryInfo)
		else
			humanoidDescription[IBConstants.HumanoidDescriptionIdToName[assetInfo.assetTypeId]] = assetId
		end
	end

	if bundleHasLC then
		humanoidDescription:SetAccessories(tryOnAccessories, --[[includeRigidAccessories =]] true)
	end

	return humanoidDescription
end

--[[
	return a humanoid description with the selected bundle tried on
]]
function TryOnViewport:getHumanoidDescriptionFromBundleTryOn()
	local humanoidDescription = self.humanoidDescriptionForLocalPlayer:Clone()
	local assetInfo = self.props.selectedItem
	local bundleId = assetInfo.bundlesAssetIsIn[1]
	local costumeId = self.props.bundles[bundleId].costumeId

	if costumeId then
		-- if the bundle includes a costumeId, the try on can be
		-- done via the costumeHumanoidDescription
		local costumeHumanoidDescription = self.humanoidDescriptions[costumeId]
		if costumeHumanoidDescription then
			-- Overwrite the inspecter's assets with any asset from the costume.
			for assetTypeId, name in pairs(IBConstants.HumanoidDescriptionIdToName) do
				if IBConstants.AssetTypeIdToAccessoryTypeEnum[assetTypeId] == nil
					and tonumber(costumeHumanoidDescription[name]) and tostring(costumeHumanoidDescription[name]) ~= "0" then
					humanoidDescription[name] = costumeHumanoidDescription[name]
				end
			end

			local costumeAccessories = costumeHumanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
			humanoidDescription:SetAccessories(costumeAccessories, --[[includeRigidAccessories =]] true)
		end
	else
		humanoidDescription = self:tryOnBundleWithoutCostumeId(bundleId, humanoidDescription)
	end

	return humanoidDescription
end

--[[
	return a humanoid description with the selected asset tried on
]]
function TryOnViewport:getHumanoidDescriptionFromAssetTryOn()
	local humanoidDescription = self.humanoidDescriptionForLocalPlayer:Clone()
	local assetInfo = self.props.selectedItem
	-- Cannot set humanoidDescription value directly if the tryingOn asset is an accessory
	if IBConstants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId] then
		local tryOnAccessory = IBConstants.AssetTypeIdToAccessoryTypeEnum[assetInfo.assetTypeId]
		local accessories = humanoidDescription:GetAccessories(--[[includeRigidAccessories =]] true)
		local tryOnAccessories = {}
		-- Iterate through the currently equipped accessories and add them to a new table to be used in
		-- SetAccessories. Only insert accessories that are not of the same type as the trying on accessory and
		-- are not of the same layered clothing category. Essentially, this will replace all accessories of that
		-- category with the trying on accessory
		for _, accessory in pairs(accessories) do
			local accessoryAssetType = IBConstants.AccessoryTypeEnumToAssetTypeId[accessory.AccessoryType]
			local tryOnAccessoryCategory = IBConstants.AssetTypeToAssetCategory[assetInfo.assetTypeId]
			local accessoryCategory = IBConstants.AssetTypeToAssetCategory[accessoryAssetType]
			local ofDifferentCategory = (not tryOnAccessoryCategory) or accessoryCategory ~= tryOnAccessoryCategory

			if accessory.AccessoryType ~= tryOnAccessory and ofDifferentCategory then
				table.insert(tryOnAccessories, accessory)
			end
		end
		-- format and add our trying on accessory to the table of all accessories to be used in SetAccessories
		local tryOnAccessoryInfo = createDefaultHumanoidDescriptionAccessoryInfo(assetInfo.assetTypeId, assetInfo.assetId)
		table.insert(tryOnAccessories, tryOnAccessoryInfo)
		humanoidDescription:SetAccessories(tryOnAccessories, --[[includeRigidAccessories =]] true)
	else
		humanoidDescription[IBConstants.HumanoidDescriptionIdToName[assetInfo.assetTypeId]] = assetInfo.assetId
	end

	return humanoidDescription
end

function TryOnViewport:render()
	local viewportSize = Constants.PageWidth * VIEWPORT_SIZE_RATIO
	local humanoidDescription = self.humanoidDescriptionForLocalPlayer:Clone()
	local assetInfo = self.props.selectedItem

	if assetInfo and self.props.tryingOn then
		if isPartOfBundleAndOffsale(assetInfo) then
			humanoidDescription = self:getHumanoidDescriptionFromBundleTryOn()
		else
			humanoidDescription = self:getHumanoidDescriptionFromAssetTryOn()
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(viewportSize, viewportSize),
		LayoutOrder = self.props.LayoutOrder,
		Visible = self.props.tryingOn,
	}, {
		AvatarViewport = Roact.createElement(AvatarViewport, {
			size = UDim2.fromScale(1, 1),
			position = UDim2.fromScale(0.5, 0.5),
			humanoidDescription = humanoidDescription,
			model = self.model,
			setScrollingEnabled = self.props.setScrollingEnabled,
		})
	})
end

function TryOnViewport:didMount()
	self.isMounted = true
end

function TryOnViewport:didUpdate(prevProps)
	local assetInfo = self.props.selectedItem

	if self.props.tryingOn ~= prevProps.tryingOn and self.props.tryingOn and isPartOfBundleAndOffsale(assetInfo) then
		local bundleId = assetInfo.bundlesAssetIsIn[1]
		local costumeId = self.props.bundles[bundleId].costumeId

		if costumeId and not self.state.obtainedHumanoidDescriptions[costumeId] then
			-- Get the humanoid description of this bundle's costume.
			self.props.getHumanoidDescriptionFromCostumeId(costumeId, function(humanoidDescription)
				if self and self.isMounted then
					self.humanoidDescriptions[costumeId] = humanoidDescription
					self:setState({
						obtainedHumanoidDescriptions = Cryo.Dictionary.join(self.state.obtainedHumanoidDescriptions, {[costumeId] = true})
					})
				end
			end)
		end
	end
end

function TryOnViewport:willUnmount()
	self.isMounted = false
end

return RoactRodux.connect(
	function(state, props)
		return {
			tryingOn = state.inspectAndBuy.TryingOn,
			selectedItem = state.inspectAndBuy.SelectedItem,
			bundles = state.inspectAndBuy.Bundles,
			assets = state.inspectAndBuy.Assets,
		}
	end,
	function(dispatch)
		return {
			getHumanoidDescriptionFromCostumeId = function(costumeId, callback)
				return dispatch(GetHumanoidDescriptionFromCostumeId(costumeId, callback))
			end,
		}
	end
)(TryOnViewport)
