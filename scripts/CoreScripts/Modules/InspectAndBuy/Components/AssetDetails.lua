local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local DetailsText = require(InspectAndBuyFolder.Components.DetailsText)
local DetailsThumbnail = require(InspectAndBuyFolder.Components.DetailsThumbnail)
local DetailsDescription = require(InspectAndBuyFolder.Components.DetailsDescription)
local DetailsButtons = require(InspectAndBuyFolder.Components.DetailsButtons)
local TryOnViewport = require(InspectAndBuyFolder.Components.TryOnViewport)
local GetAssetBundles = require(InspectAndBuyFolder.Thunks.GetAssetBundles)
local ReportOpenDetailsPage = require(InspectAndBuyFolder.Thunks.ReportOpenDetailsPage)
local GetEconomyProductInfo = require(InspectAndBuyFolder.Thunks.GetEconomyProductInfo)
local GetCollectibleResellableInstances = require(InspectAndBuyFolder.Thunks.GetCollectibleResellableInstances)
local Colors = require(InspectAndBuyFolder.Colors)
local Constants = require(InspectAndBuyFolder.Constants)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local tutils = require(CorePackages.tutils)
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)
local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local UIBloxImageSetLabel = UIBlox.Core.ImageSet.Label

local FFlagAssetDetailsUseAutomaticCanvasSize =
	require(InspectAndBuyFolder.Flags.FFlagAssetDetailsUseAutomaticCanvasSize)
local GetFFlagUseInspectAndBuyControllerBar = require(InspectAndBuyFolder.Flags.GetFFlagUseInspectAndBuyControllerBar)
local GetCollectibleItemInInspectAndBuyEnabled =
	require(InspectAndBuyFolder.Flags.GetCollectibleItemInInspectAndBuyEnabled)
local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)
local GetFFlagDisplayCollectiblesIcon = require(InspectAndBuyFolder.Flags.GetFFlagDisplayCollectiblesIcon)

local CONTROLLER_BAR_HEIGHT = require(CoreGui.RobloxGui.Modules.InGameMenuConstants).ControllerBarHeight

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

function AssetDetails:init()
	self.state = {
		scrollingEnabled = true,
	}
end

function AssetDetails:willUpdate(nextProps)
	if self.props.assetInfo ~= nextProps.assetInfo and nextProps.assetInfo then
		local getAssetBundles = self.props.getAssetBundles

		if not nextProps.assetInfo.bundlesAssetIsIn then
			getAssetBundles(nextProps.assetInfo.assetId)
		end
	end

	if
		game:GetEngineFeature("CollectibleItemPurchaseResellEnabled")
		and UtilityFunctions.isCollectibles(self.props.assetInfo)
	then
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
end

function AssetDetails:didUpdate(prevProps)
	local reportOpenDetailsPage = self.props.reportOpenDetailsPage
	local assetInfo = self.props.assetInfo
	local prevAssetInfo = prevProps.assetInfo

	if assetInfo ~= prevAssetInfo and assetInfo and assetInfo.bundlesAssetIsIn then
		local getEconomyProductInfo = self.props.getEconomyProductInfo
		local bundles = self.props.bundles
		local isBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
		local bundleId = isBundle and UtilityFunctions.getBundleId(assetInfo)
		local productId = isBundle and bundles[bundleId].productId or assetInfo.productId

		-- TODO: Update the condition if or when we introduce L2.0 bundles
		-- Collectible Items don't need the getEconomyProductInfo() check, as users can own multiple instances
		local skipEconomyProductInfo = GetCollectibleItemInInspectAndBuyEnabled()
			and assetInfo.productType == Constants.ProductType.CollectibleItem

		if
			(not isBundle and not skipEconomyProductInfo and assetInfo.owned == nil)
			or (isBundle and bundles[bundleId].owned == nil)
		then
			getEconomyProductInfo(productId, isBundle, bundleId)
		end
	end

	--[[
		We need to report when the item details page was opened, but we need to know if it's showing a bundle
		or asset. So we have to check if we've gotten that data yet or not.
	]]
	local startedViewingDetails = self.props.detailsInformation.viewingDetails
		and not prevProps.detailsInformation.viewingDetails
	local obtainedBundlesInfo = prevAssetInfo
		and not prevAssetInfo.bundlesAssetIsIn
		and assetInfo
		and assetInfo.bundlesAssetIsIn

	if (assetInfo and assetInfo.bundlesAssetIsIn and startedViewingDetails) or obtainedBundlesInfo then
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
				getCollectibleResellableInstances(assetInfo.collectibleItemId, localUserId)
				ownedInstances = resellableInstances
					and resellableInstances[assetInfo.collectibleItemId]
					and tutils.fieldCount(resellableInstances[assetInfo.collectibleItemId])
			end

			if GetFFlagUseInspectAndBuyControllerBar() and self.props.gamepadEnabled then
				controllerBarOffset = -1 * CONTROLLER_BAR_HEIGHT
			end
			return Roact.createElement("Frame", {
				Position = UDim2.new(0, viewMapping.BorderPaddingSize, 0, 0),
				Size = UDim2.new(1, -(2 * viewMapping.BorderPaddingSize), 1, controllerBarOffset),
				BackgroundTransparency = 0,
				BackgroundColor3 = Colors.Carbon,
				BorderSizePixel = 0,
				-- Do not show asset information until we know if a bundle should be shown instead.
				Visible = detailsInformation.viewingDetails and assetInfo.bundlesAssetIsIn ~= nil,
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
					CanvasSize = if FFlagAssetDetailsUseAutomaticCanvasSize then UDim2.new(1, 0, 0, 0) else nil,
					AutomaticCanvasSize = if FFlagAssetDetailsUseAutomaticCanvasSize then Enum.AutomaticSize.Y else nil,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 10),
					}),
					DetailsThumbnail = Roact.createElement(DetailsThumbnail),
					TryOnViewport = localPlayerModel and Roact.createElement(TryOnViewport, {
						localPlayerModel = localPlayerModel,
						setScrollingEnabled = function(enabled)
							self:setScrollingEnabled(enabled)
						end,
					}),
					DetailsText = Roact.createElement(DetailsText, {
						localPlayerModel = localPlayerModel,
					}),
					-- Adding an owned item counter to show how many items the user owns.
					ItemOwnedLabelContainer = isCollectibles and Roact.createElement("Frame", {
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
							Font = Enum.Font.Gotham,
							TextSize = 12,
							TextColor3 = Color3.new(1, 1, 1),
							BackgroundTransparency = 1,
						}),
					}),
					DetailsDescription = Roact.createElement(DetailsDescription),
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
	}
end)(AssetDetails)
