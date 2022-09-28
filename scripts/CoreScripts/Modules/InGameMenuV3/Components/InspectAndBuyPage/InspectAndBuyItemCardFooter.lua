--[[
	Footer for the InspectAndBuyItemCard
	This footer includes the price with the robux icon,
	an icon for if the user owns the item, or a shimmer
	if we are still awaiting data from backend
]]

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ShimmerPanel = UIBlox.Loading.ShimmerPanel
local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local getPurchaseInfo = require(InGameMenu.Selectors.getPurchaseInfo)
local IBUtils = require(InGameMenu.Utility.InspectAndBuyUtils)
local GetItemDetails = require(InGameMenu.Thunks.GetItemDetails)
local GetAssetBundles = require(InGameMenu.Thunks.GetAssetBundles)

local ICON_PADDING = 4

local InspectAndBuyItemCardFooter = Roact.PureComponent:extend("InspectAndBuyItemCardFooter")

InspectAndBuyItemCardFooter.validateProps = t.strictInterface({
	price = t.optional(t.number),
	productId = t.optional(t.number),
	asset = t.optional(t.table),

	-- from mapStateToProps
	purchaseInfo = t.optional(t.table),

	-- from mapDispatchToProps
	fetchItemDetails = t.callback,
	fetchAssetBundles = t.callback,
})

function InspectAndBuyItemCardFooter:init()
	self.fetchItemDetails = function()
		return self.props.fetchItemDetails(self.props.asset.assetId)
	end

	self.fetchAssetBundles = function()
		return self.props.fetchAssetBundles(self.props.asset.assetId)
	end
end

function InspectAndBuyItemCardFooter:fetchItemInfo()
	self.fetchItemDetails()
	local hasFetchedBundles = self.props.asset.bundlesAssetIsIn ~= nil
	if not hasFetchedBundles and not self.props.price or (self.props.price == 0 and not self.props.asset.isForSale) then
		self.fetchAssetBundles()
	end
end

function InspectAndBuyItemCardFooter:didMount()
	if self.props.productId then
		self:fetchItemInfo()
	end
end

function InspectAndBuyItemCardFooter:renderWithProviders(stylePalette, localized)
	local font = stylePalette.Font.SubHeader1.Font
	local fontSize = stylePalette.Font.BaseSize * stylePalette.Font.SubHeader1.RelativeSize
	local theme = stylePalette.Theme

	local iconSize = Vector2.new(fontSize, fontSize)
	local purchaseInfo = self.props.purchaseInfo
	local icon, text = IBUtils.getItemLabelData(purchaseInfo, localized)

	local iconPadding = 0
	if icon then
		iconPadding = iconSize.X + ICON_PADDING
	end
	local shouldShimmer = purchaseInfo.isLoading or purchaseInfo.owned == nil

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		Shimmer = shouldShimmer and Roact.createElement(ShimmerPanel, {
			Size = UDim2.new(0.8, 0, 0, fontSize),
		}),

		Icon = (not shouldShimmer and icon) and Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = icon,
			ImageColor3 = theme.IconDefault.Color,
			ImageTransparency = theme.IconDefault.Transparency,
			Size = UDim2.fromOffset(iconSize.X, iconSize.Y),
		}),

		TextLabel = (not shouldShimmer and text) and Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,
			Position = UDim2.fromScale(1, 0),
			Size = UDim2.new(1, -iconPadding, 1, 0),
			Font = font,
			TextColor3 = theme.TextMuted.Color,
			TextTransparency = theme.TextMuted.Transparency,
			TextSize = fontSize,
			Text = text,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		})
	})
end

function InspectAndBuyItemCardFooter:render()
	return withStyle(function(stylePalette)
		return withLocalization({
			freeText = "CoreScripts.InGameMenu.Label.Free",
			offSaleText = "CoreScripts.InGameMenu.Label.Offsale",
			limitedText = "CoreScripts.InGameMenu.Label.Limited",
			premiumOnlyText = "CoreScripts.InGameMenu.Label.PremiumOnly",
		})(function(localized)
			return self:renderWithProviders(stylePalette, localized)
		end)
	end)
end

function InspectAndBuyItemCardFooter:didUpdate(prevProps)
	if not prevProps.productId and self.props.productId then
		self:fetchItemInfo()
	end
end

local function mapStateToProps(state, props)
	return {
		purchaseInfo = getPurchaseInfo(state, props.asset)
	}
end

local function mapDispatchToProps(dispatch)
	return {
		fetchItemDetails = function(assetId)
			dispatch(GetItemDetails(assetId))
		end,
		fetchAssetBundles = function(assetId)
			dispatch(GetAssetBundles(assetId))
		end,
	}
end

InspectAndBuyItemCardFooter = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(InspectAndBuyItemCardFooter)

return InspectAndBuyItemCardFooter