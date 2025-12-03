local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local DetailsText = require(InspectAndBuyFolder.Components.DetailsText)
local DetailsThumbnail = require(InspectAndBuyFolder.Components.DetailsThumbnail)
local DetailsDescription = require(InspectAndBuyFolder.Components.DetailsDescription)
local DetailsButtons = require(InspectAndBuyFolder.Components.DetailsButtons)
local TryOnViewport = require(InspectAndBuyFolder.Components.TryOnViewport)
local OpenOverlay = require(InspectAndBuyFolder.Actions.OpenOverlay)
local OverlayEnum = require(InspectAndBuyFolder.Enums.Overlay)
local GetAssetBundles = require(InspectAndBuyFolder.Thunks.GetAssetBundles)
local ReportOpenDetailsPage = require(InspectAndBuyFolder.Thunks.ReportOpenDetailsPage)
local GetEconomyProductInfo = require(InspectAndBuyFolder.Thunks.GetEconomyProductInfo)
local GetCollectibleResellableInstances = require(InspectAndBuyFolder.Thunks.GetCollectibleResellableInstances)
local Colors = require(InspectAndBuyFolder.Colors)
local Constants = require(InspectAndBuyFolder.Constants)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local tutils = require(CorePackages.Packages.tutils)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local UIBloxImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local ItemInfoList = require(CorePackages.Workspace.Packages.ItemDetails).ItemInfoList
local AttributionConstants = require(InspectAndBuyFolder.AttributionConstants)

local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)
local GetFFlagDisplayCollectiblesIcon = require(InspectAndBuyFolder.Flags.GetFFlagDisplayCollectiblesIcon)
local GetItemDetails = require(InspectAndBuyFolder.Thunks.GetItemDetails)
local SetAssetFromBundleInfo = require(InspectAndBuyFolder.Actions.SetAssetFromBundleInfo)

local Modules = CoreGui.RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)

local CONTROLLER_BAR_HEIGHT = require(CoreGui.RobloxGui.Modules.InGameMenuConstants).ControllerBarHeight

local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

local AssetDetails = Roact.PureComponent:extend("AssetDetails")
local ITEM_OWNED = "InGame.InspectMenu.Label.OwnedItems"
local OWNED_ITEM_IMAGE = "icons/status/item/owned"

function AssetDetails:setScrollingEnabled(enabled)
	local scrollingEnabled = self.state.scrollingEnabled

	if scrollingEnabled ~= enabled then
		self:setState({
			scrollingEnabled = enabled,
		})
	end
end

function AssetDetails:getInfoRowProps()
	local assetInfo = self.props.assetInfo or {}
	local locale = self.props.locale

	-- TODO: make sure this is extracted to a utility function when removing the flag.
	local isBundle = assetInfo.parentBundleId ~= nil

	-- Creator Row
	local creatorRow = {
		infoName = RobloxTranslator:FormatByKeyForLocale("Feature.Catalog.Label.Filter.Creator", locale),
		infoData = assetInfo.creatorName or "",
		hasVerifiedBadge = assetInfo.creatorHasVerifiedBadge,
		LayoutOrder = 1,
		Selectable = false,
	}

	-- Attribution Row
	-- Should only show if item has attribution and is not restricted
	local attributionRow

	local creatingUniverseId = assetInfo.creatingUniverseId
	if creatingUniverseId then
		local experienceInfo = self.props.creatingExperiences[creatingUniverseId]
		-- Make sure we have information in the store
		if experienceInfo then
			local playabilityStatus = experienceInfo.playabilityStatus

			if AttributionConstants.ShowPlayableAttributionMapper[playabilityStatus] then
				local gameName = experienceInfo.name or ""

				attributionRow = {
					infoName = RobloxTranslator:FormatByKeyForLocale("Feature.Catalog.Label.Attribution", locale),
					infoData = gameName,
					onActivate = function()
						self.props.openOverlay(OverlayEnum.AttributionTraversal, experienceInfo)
					end,
					LayoutOrder = 2,
					[Roact.Ref] = self.attributionRef,
					Selectable = true,
				}
			end
		end
	end

	-- Category Row
	local categoryString
	if isBundle then
		categoryString = RobloxTranslator:FormatByKeyForLocale("Feature.Catalog.Label.Bundle", locale)
	else
		local category = Constants.AssetTypeIdToCategory[assetInfo.assetTypeId]
		local categoryKey = Constants.AssetCategoriesLocalized[category]
		local subTypeKey = Constants.AssetTypeIdToTypeLocalized[assetInfo.assetTypeId]

		if categoryKey and subTypeKey then
			local categoryLocalized = RobloxTranslator:FormatByKeyForLocale(categoryKey, locale)
			local subTypeLocalized = RobloxTranslator:FormatByKeyForLocale(subTypeKey, locale)

			categoryString = categoryLocalized .. " | " .. subTypeLocalized
		end
	end

	local categoryRow = {
		infoName = RobloxTranslator:FormatByKeyForLocale("Feature.Catalog.Label.CategoryType", locale),
		infoData = categoryString,
		LayoutOrder = 3,
		Selectable = false,
	}

	local rowData = {
		creatorRow,
		attributionRow,
		categoryRow,
	}

	return rowData
end

function AssetDetails:init()
	self.state = {
		scrollingEnabled = true,
	}

	self.attributionRef = Roact.createRef()
end

function AssetDetails:willUpdate(nextProps)
	if UtilityFunctions.isCollectibles(self.props.assetInfo) then
		local itemId = self.props.assetInfo.collectibleItemId
		local prevResellableInstances = self.props.resellableInstances
		local nextResellableInstances = nextProps.resellableInstances
		local instancesExist = prevResellableInstances
			and prevResellableInstances[itemId]
			and nextResellableInstances
			and nextResellableInstances[itemId]
		if
			instancesExist
			and tutils.fieldCount(prevResellableInstances[itemId])
				~= tutils.fieldCount(nextResellableInstances[itemId])
		then
			self:setState({})
		end
	end

	local bundleId = self.props.assetInfo and self.props.assetInfo.parentBundleId
	local bundles = self.props.bundles
	local nextBundles = nextProps.bundles
	if
		bundleId
		and bundles
		and bundles[bundleId]
		and nextBundles
		and nextBundles[bundleId]
		and nextBundles[bundleId] ~= bundles[bundleId]
	then
		self.props.setAssetFromBundleInfo(self.props.assetInfo.assetId, nextBundles[bundleId])
	end
end

function AssetDetails:didUpdate(prevProps)
	local reportOpenDetailsPage = self.props.reportOpenDetailsPage
	local assetInfo = self.props.assetInfo
	local prevAssetInfo = prevProps.assetInfo
	-- It was using bundlesAssetIsIn ~= nil to check if the bundle info was obtained.
	local assetInfoUpdated = assetInfo and assetInfo ~= prevAssetInfo
	if assetInfoUpdated then
		local bundles = self.props.bundles
		local isBundle = assetInfo.parentBundleId ~= nil
		local bundleId = isBundle and UtilityFunctions.getBundleId(assetInfo)

		-- TODO: Update the condition if or when we introduce L2.0 bundles
		-- Collectible Items don't need the getEconomyProductInfo() check, as users can own multiple instances
		-- TODO (lliu): Unlimited Items/Bundles won't be able to use this API, as this API does not support for unlimited items on the backend
		if (not isBundle and assetInfo.owned == nil) or (isBundle and bundles[bundleId].owned == nil) then
			local itemId = assetInfo.assetId
			local itemType = Enum.AvatarItemType.Asset
			if isBundle then
				itemId = bundleId
				itemType = Enum.AvatarItemType.Bundle
			end
			self.props.getItemDetails(itemId, itemType)
		end
	end

	--[[
		We need to report when the item details page was opened, but we need to know if it's showing a bundle
		or asset. So we have to check if we've gotten that data yet or not.
	]]
	local startedViewingDetails = self.props.detailsInformation.viewingDetails
		and not prevProps.detailsInformation.viewingDetails
	local shouldReportOpenDetailPage = startedViewingDetails

	if shouldReportOpenDetailPage then
		reportOpenDetailsPage(assetInfo)
	end
end

function AssetDetails:render()
	local view = self.props.view
	local detailsInformation = self.props.detailsInformation
	local assetInfo = self.props.assetInfo or {}
	local localPlayerModel = self.props.localPlayerModel
	local scrollingEnabled = self.state.scrollingEnabled
	local locale = self.props.locale
	local icon = Images[OWNED_ITEM_IMAGE]
	local imageSize = icon and icon.ImageRectSize / Images.ImagesResolutionScale or Vector2.new(0, 0)

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
			local controllerBarOffset = 0
			local isCollectibles = GetFFlagDisplayCollectiblesIcon() and UtilityFunctions.isCollectibles(assetInfo)
			local ownedInstances = 0
			if isCollectibles then
				local getCollectibleResellableInstances = self.props.getCollectibleResellableInstances
				local resellableInstances = self.props.resellableInstances
				local localUserId = Players.LocalPlayer and Players.LocalPlayer.UserId
				-- TODO (lliu): this method should not be called here.
				-- Because this call is async, we basically rely on triggering re-rendering to get the data correct
				getCollectibleResellableInstances(assetInfo.collectibleItemId, localUserId)
				ownedInstances = resellableInstances
						and resellableInstances[assetInfo.collectibleItemId]
						and tutils.fieldCount(resellableInstances[assetInfo.collectibleItemId])
					or 0
			end
			local showOwnedItemLabel = UtilityFunctions.isLimited2Point0_Or_LimitedCollectible(assetInfo)

			if self.props.gamepadEnabled then
				controllerBarOffset = -1 * CONTROLLER_BAR_HEIGHT
			end
			controllerBarOffset += -Theme.DefaultCornerRadius.Offset
			
			return Roact.createElement("Frame", {
				Position = UDim2.new(0, viewMapping.BorderPaddingSize, 0, 0),
				Size = UDim2.new(1, -(2 * viewMapping.BorderPaddingSize), 1, controllerBarOffset),
				BackgroundTransparency = 0,
				BackgroundColor3 = Colors.Carbon,
				BorderSizePixel = 0,
				-- Do not show asset information until we know if a bundle should be shown instead.
				Visible = detailsInformation.viewingDetails,
			}, {
				DetailsButtons = Roact.createElement(DetailsButtons, {
					localPlayerModel = localPlayerModel,
				}),
				Container = Roact.createElement("ScrollingFrame", {
					BackgroundTransparency = 1,
					ScrollBarThickness = 0,
					Size = UDim2.new(1, 0, 1, -55),
					ScrollingEnabled = scrollingEnabled,
					Selectable = false,
					CanvasSize = UDim2.new(1, 0, 0, 0),
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 10),
					}),
					DetailsThumbnail = Roact.createElement(DetailsThumbnail),
					TryOnViewport = if isInExperienceUIVREnabled
						then (if detailsInformation.viewingDetails and localPlayerModel
							then Roact.createElement(TryOnViewport, {
								localPlayerModel = localPlayerModel,
								setScrollingEnabled = function(enabled)
									self:setScrollingEnabled(enabled)
								end,
							})
							else nil)
						else localPlayerModel and Roact.createElement(TryOnViewport, {
							localPlayerModel = localPlayerModel,
							setScrollingEnabled = function(enabled)
								self:setScrollingEnabled(enabled)
							end,
						}),
					DetailsText = Roact.createElement(DetailsText, {
						localPlayerModel = localPlayerModel,
					}),
					-- Adding an owned item counter to show how many items the user owns.
					ItemOwnedLabelContainer = showOwnedItemLabel and Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, imageSize.Y + 20),
						BorderSizePixel = 0,
						LayoutOrder = 3,
						BackgroundColor3 = Color3.fromRGB(57, 59, 61),
					}, {
						Corner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, 8),
						}),
						OwnedIcon = Roact.createElement(UIBloxImageSetLabel, {
							Size = UDim2.new(0, imageSize.X, 0, imageSize.Y),
							Position = UDim2.new(0, 12, 0, 10),
							Image = icon,
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
						}),
						ItemOwnedLabel = Roact.createElement("TextLabel", {
							Size = UDim2.new(0, imageSize.X, 0, imageSize.Y),
							Position = UDim2.new(0, imageSize.X + 60, 0, 10),
							Text = RobloxTranslator:FormatByKeyForLocale(
								ITEM_OWNED,
								locale,
								{ QUANTITY = tostring(ownedInstances) }
							),
							Font = AppFonts.default:getDefault(),
							TextSize = 12,
							TextColor3 = Color3.new(1, 1, 1),
							BackgroundTransparency = 1,
						}),
					}),
					DetailsDescription = Roact.createElement(DetailsDescription),
					ItemInfoList = Roact.createElement(ItemInfoList, {
						rowData = self:getInfoRowProps(),
						LayoutOrder = 5,
					}),
				}),
			})
		end,
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local assetId = state.detailsInformation.assetId

	return {
		view = state.view,
		detailsInformation = state.detailsInformation,
		assetInfo = state.assets[assetId],
		bundles = state.bundles,
		gamepadEnabled = state.gamepadEnabled,
		locale = state.locale,
		resellableInstances = state.collectibleResellableInstances,
		creatingExperiences = state.creatingExperiences,
	}
end, function(dispatch)
	return {
		getAssetBundles = function(assetId)
			dispatch(GetAssetBundles(assetId))
		end,
		getEconomyProductInfo = function(productId, isBundle, bundleId)
			dispatch(GetEconomyProductInfo(productId, isBundle, bundleId))
		end,
		reportOpenDetailsPage = function(assetInfo)
			dispatch(ReportOpenDetailsPage(assetInfo))
		end,
		getCollectibleResellableInstances = function(collectibleItemId, userId)
			dispatch(GetCollectibleResellableInstances(collectibleItemId, userId))
		end,
		openOverlay = function(overlay, overlayProps)
			dispatch(OpenOverlay(overlay, overlayProps))
		end,
		getItemDetails = function(itemId, itemType)
			dispatch(GetItemDetails(itemId, itemType))
		end,
		setAssetFromBundleInfo = function(assetId, bundleInfo)
			dispatch(SetAssetFromBundleInfo(assetId, bundleInfo))
		end,
	}
end)(AssetDetails)
