--[[
	This component shows the sales status and price of published assets

	Necessary props:
		assetTypeEnum, Enum.AssetType
		allowedAssetTypesForRelease, table, information about what asset types can be released
		newAssetStatus, string, from AssetConfigConstants.ASSET_STATUS (what the status for the asset will be in the back-end after we save the changes on this widget)
		currentAssetStatus, string, from AssetConfigConstants.ASSET_STATUS (what the current status for the asset is in the back-end)
		price, number
		minPrice, number
		maxPrice, number
		isPriceValid, bool, changes the behavoir of the component.

		onStatusChange, function, sales status has changed
		onPriceChange, function, price has changed
]]

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")
local FFlagEnableNonWhitelistedToggle = game:GetFastFlag("EnableNonWhitelistedToggle")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local SalesComponent = require(AssetConfiguration.SalesComponent)
local PriceComponent = require(AssetConfiguration.PriceComponent)

local UILibrary = Libs.UILibrary
local Separator = require(UILibrary.Components.Separator)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local TOTAL_VERTICAL_PADDING = 60

local SalesPage = Roact.PureComponent:extend("SalesPage")

function SalesPage:init(props)
	self.frameRef = Roact.createRef()
end

function SalesPage:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local size = props.size
			local newAssetStatus = props.newAssetStatus
			local currentAssetStatus = props.currentAssetStatus
			local onStatusChange = props.onStatusChange
			local assetTypeEnum = props.assetTypeEnum
			local allowedAssetTypesForRelease = props.allowedAssetTypesForRelease
			local price = props.price
			local minPrice = props.minPrice
			local maxPrice = props.maxPrice
			local feeRate = props.feeRate
			local onPriceChange = props.onPriceChange
			local isPriceValid = props.isPriceValid
			local layoutOrder = props.layoutOrder
			local canChangeSalesStatus = AssetConfigUtil.isReadyForSale(newAssetStatus)
			-- If it's marketplace buyable asset, and if the sales tab are avaialble. You can always toggle it.
			if FFlagEnablePurchasePluginFromLua2 and AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum) then
				canChangeSalesStatus = true
			end

			-- When we are in this page, sales and price are default to available.
			-- Only when for marketplace buyable, and none whitelist user, we hide the price.
			-- And the sales will only be toggle between Free and OffSale.
			local showPrice = true
			if FFlagEnableNonWhitelistedToggle then
				-- Only none whileList and marketplace buy will have no price
				if not allowedAssetTypesForRelease[assetTypeEnum.Name] then
					showPrice = false
				end
			end

			local orderIterator = LayoutOrderIterator.new()

			return Roact.createElement("ScrollingFrame", {
				Size = size,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				LayoutOrder = layoutOrder,

				[Roact.Ref] = self.frameRef,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, TOTAL_VERTICAL_PADDING*0.5),
					PaddingBottom = UDim.new(0, TOTAL_VERTICAL_PADDING*0.5),
					PaddingLeft = UDim.new(0, 30),
					PaddingRight = UDim.new(0, 30),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 32),

					[Roact.Change.AbsoluteContentSize] = function(rbx)
						self.frameRef.current.CanvasSize = UDim2.new(size.X.Scale, size.X.Offset, 0, rbx.AbsoluteContentSize.y + TOTAL_VERTICAL_PADDING)
					end
				}),

				SalesStatus = Roact.createElement(SalesComponent, {
					Title = localizedContent.Sales.Sale,
					AssetTypeEnum = assetTypeEnum,
					NewAssetStatus = newAssetStatus,
					CurrentAssetStatus = currentAssetStatus,
					OnStatusChange = onStatusChange,
					CanChangeSalesStatus = canChangeSalesStatus,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				Separator1 = Roact.createElement(Separator, {
					LayoutOrder = orderIterator:getNextOrder(),
				}),

				PriceComponent = showPrice and Roact.createElement(PriceComponent, {
					AssetTypeEnum = assetTypeEnum,
					AllowedAssetTypesForRelease = allowedAssetTypesForRelease,
					NewAssetStatus = newAssetStatus,

					Price = price,
					MinPrice = minPrice,
					MaxPrice = maxPrice,
					FeeRate = feeRate,
					IsPriceValid = isPriceValid,

					OnPriceChange = onPriceChange,

					LayoutOrder = orderIterator:getNextOrder(),
				})
			})
		end)
	end)
end

return SalesPage