local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local UIBlox = require(CorePackages.UIBlox)
local UIBloxImages = UIBlox.App.ImageSet.Images
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local Notification = require(InspectAndBuyFolder.Components.Notification)
local Favorites = require(InspectAndBuyFolder.Components.Favorites)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local Colors = require(InspectAndBuyFolder.Colors)
local Constants = require(InspectAndBuyFolder.Constants)
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)
local getSelectionImageObjectRegular = require(InspectAndBuyFolder.getSelectionImageObjectRegular)

local GetFFlagLuaPremiumCatalogIGIAB
	= require(CoreGui.RobloxGui.Modules.Flags.GetFFlagLuaPremiumCatalogIGIAB)

local PremiumIcon = UIBloxImages["icons/status/premium"]
local BY_KEY = "InGame.InspectMenu.Label.By"
local TEXT_SIZE_SMALL = 12
local TITLE_TEXT_SIZE = 20
local FAVORITES_SIZE = 16
local ASSET_NAME_SIZE = 50
local CREATOR_SIZE = 20
local NOTIFICATION_SIZE = 45
local PREMIUM_ICON_PADDING = 5

local DetailsText = Roact.PureComponent:extend("DetailsText")

function DetailsText:init()
	self.name = ""
	self.creator = ""
	self.selectedImage = getSelectionImageObjectRegular()
end

--[[
	Sets the variables used to display text. If a bundle is
	being shown, they will display the bundle's data instead.
]]
function DetailsText:setText()
	local assetInfo = self.props.assetInfo or {}
	local partOfBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
	local bundleInfo = self.props.bundleInfo or {}

	if partOfBundle then
		local bundleId = UtilityFunctions.getBundleId(assetInfo)
		if bundleInfo[bundleId] then
			self.name = bundleInfo[bundleId].name or ""
			self.creator = bundleInfo[bundleId].creatorName or ""
		end
	elseif assetInfo then
		self.name = assetInfo.name or ""
		self.creator = assetInfo.creatorName or ""
	end
end

function DetailsText:render()
	self:setText()
	local view = self.props.view
	local viewMapping = self._context[view]
	local locale = self.props.locale
	local assetInfo = self.props.assetInfo or {}
	local partOfBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
	local multipleBundles = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn > 1
	local showPremiumIcon = GetFFlagLuaPremiumCatalogIGIAB() and assetInfo.premiumPricing ~= nil
	local premiumIconPadding = showPremiumIcon and (UIBloxIconSize.Regular + PREMIUM_ICON_PADDING) or 0
	local noticeKey = nil
	if multipleBundles then
		noticeKey = Constants.NotificationKeys.MultipleBundleNoticeKey
	elseif partOfBundle then
		noticeKey = Constants.NotificationKeys.SingleBundleNoticeKey
	elseif assetInfo.isLimited then
		noticeKey = Constants.NotificationKeys.LimitedItemNoticeKey
	end

	return Roact.createElement("Frame", {
		Position = viewMapping.DetailsFramePosition,
		Size = UDim2.new(1, 0, 0, ASSET_NAME_SIZE + CREATOR_SIZE + FAVORITES_SIZE + NOTIFICATION_SIZE),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirection = Enum.FillDirection.Vertical,
		}),
		Notification = noticeKey and Roact.createElement(Notification, {
			noticeKey = noticeKey,
		}),
		AssetName = GetFFlagLuaPremiumCatalogIGIAB() and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -10, 0, ASSET_NAME_SIZE),
			LayoutOrder = 1,
		}, {
			PremiumIcon = showPremiumIcon and Roact.createElement("ImageLabel", Cryo.Dictionary.join(PremiumIcon, {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Size = UDim2.new(0, UIBloxIconSize.Regular, 0, UIBloxIconSize.Regular),
				ImageColor3 = Color3.new(1, 1, 1),
			})) or nil,
			Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, premiumIconPadding, 0, 0),
				Size = UDim2.new(1, premiumIconPadding, 0, ASSET_NAME_SIZE),
				LayoutOrder = 1,
				Text = self.name or "",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextScaled = true,
				TextSize = TITLE_TEXT_SIZE,
				Font = Enum.Font.GothamBold,
				TextColor3 = Colors.White,
			}, {
				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 32,
				})
			}),
		}) or Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -10, 0, ASSET_NAME_SIZE),
			LayoutOrder = 1,
			Text = self.name or "",
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextScaled = true,
			TextSize = TITLE_TEXT_SIZE,
			Font = Enum.Font.GothamBold,
			TextColor3 = Colors.White,
		}, {
			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 32,
			})
		}),
		CreatorLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, CREATOR_SIZE),
			LayoutOrder = 2,
			Text = RobloxTranslator:FormatByKeyForLocale(BY_KEY, locale, { CREATOR = self.creator }),
			Font = Enum.Font.Gotham,
			TextScaled = false,
			TextSize = TEXT_SIZE_SMALL,
			TextColor3 = Colors.White,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		FavoriteContainer = Roact.createElement(Favorites),
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			view = state.view,
			locale = state.locale,
			assetInfo = state.assets[assetId],
			bundleInfo = state.bundles,
		}
	end
)(DetailsText)
