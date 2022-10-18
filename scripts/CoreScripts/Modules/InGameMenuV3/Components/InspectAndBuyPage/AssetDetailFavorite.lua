--[[
	Widget to display number of favorites for the selected
	asset or bundle. This includes a favorite icon,
	text of the number of favorites, and a label saying "Favorites"
]]

local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local NumberLocalization = require(CorePackages.Workspace.Packages.Localization).NumberLocalization

local withStyle = UIBlox.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Constants = require(InGameMenu.Resources.Constants)
local GetBundleFavoriteCount = require(InGameMenu.Thunks.GetBundleFavoriteCount)

local FAVORITE_SIZE = 44
local NON_TEXT_WIDTH = 74
local NUMBER_FONT_SIZE = 24
local LABEL_FONT_SIZE = 12
local FAV_ICON = Images["icons/actions/favoriteOn"]

local AssetDetailFavorite = Roact.PureComponent:extend("AssetDetailFavorite")

AssetDetailFavorite.validateProps = t.strictInterface({
	numFavorites = t.optional(t.number),
	LayoutOrder = t.optional(t.integer),
	bundleInfo = t.optional(t.table),

	-- from mapDispatchToProps
	fetchBundleFavorites = t.callback,
})

function AssetDetailFavorite:render()
	return withStyle(function(stylePalette)
		return withLocalization({
			favoritesText = "CoreScripts.InGameMenu.Label.Favorites",
		})(function(localized)
			return self:renderWithProviders(stylePalette, localized)
		end)
	end)
end

function AssetDetailFavorite:renderWithProviders(stylePalette, localized)
	local numFavorites = self.props.numFavorites
	if self.props.bundleInfo then
		numFavorites = self.props.bundleInfo.numFavorites
	end

	local favoritesCountText = numFavorites and NumberLocalization.abbreviate(numFavorites, LocalizationService.RobloxLocaleId) or ""
	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
	}, {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Icon = Roact.createElement(ImageSetLabel, {
			Size = UDim2.fromOffset(FAVORITE_SIZE, FAVORITE_SIZE),
			Image = FAV_ICON,
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),
		TextSection = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(0, Constants.PageWidth - NON_TEXT_WIDTH, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			Number = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, NUMBER_FONT_SIZE),
				LayoutOrder = 1,
				Text = favoritesCountText,
				Font = Enum.Font.GothamBold,
				TextSize = NUMBER_FONT_SIZE,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextScaled = true,
				BackgroundTransparency = 1,
			}),
			Label = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, LABEL_FONT_SIZE),
				LayoutOrder = 2,
				Text = localized.favoritesText,
				Font = Enum.Font.GothamSemibold,
				TextSize = LABEL_FONT_SIZE,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextScaled = true,
				BackgroundTransparency = 1,
			}),
		}),
	})
end

function AssetDetailFavorite:didMount()
	if self.props.bundleInfo and not self.props.bundleInfo.numFavorites then
		self.props.fetchBundleFavorites(self.props.bundleInfo.bundleId)
	end
end

function AssetDetailFavorite:didUpdate(prevProps)
	if self.props.bundleInfo and not prevProps.bundleInfo and not self.props.bundleInfo.numFavorites then
		self.props.fetchBundleFavorites(self.props.bundleInfo.bundleId)
	end
end

local function mapDispatchToProps(dispatch)
	return {
		fetchBundleFavorites = function(bundleId)
			dispatch(GetBundleFavoriteCount(bundleId))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(AssetDetailFavorite)
