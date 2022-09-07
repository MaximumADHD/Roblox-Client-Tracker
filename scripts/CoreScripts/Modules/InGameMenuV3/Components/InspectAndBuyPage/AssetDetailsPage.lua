--[[
	Page navigated to after selecting an item from the
	InspectAndBuy menu. This page will show information for the item
	including thumbnail, description, favorite count, genre, creator, and
	type. It will also allow for trying on and purchasing through the
	bottom bar
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local withStyle = UIBlox.Core.Style.withStyle
local ExpandableTextArea = UIBlox.App.Text.ExpandableTextArea

local InGameMenu = script.Parent.Parent.Parent
local IBConstants = require(InGameMenu.InspectAndBuyConstants)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Page = require(InGameMenu.Components.Page)
local ItemInfoList = require(InGameMenu.Components.InspectAndBuyPage.ItemInfoList)
local AssetDetailThumbnail = require(InGameMenu.Components.InspectAndBuyPage.AssetDetailThumbnail)
local AssetDetailFavorite = require(InGameMenu.Components.InspectAndBuyPage.AssetDetailFavorite)
local AssetDetailBottomBar = require(InGameMenu.Components.InspectAndBuyPage.AssetDetailBottomBar)

local Constants = require(InGameMenu.Resources.Constants)
local GetFavoriteForItem = require(InGameMenu.Thunks.GetFavoriteForItem)

local TITLE_TEXT_SIZE = 24
local TEXT_FRAME_HEIGHT = 40
local VERTICAL_PADDING = 12
local HORIZONTAL_PADDING = 24
local CONTENT_PADDING = 20
local COMPACT_NUMBER_OF_LINES = 3

local AssetDetailsPage = Roact.PureComponent:extend("AssetDetailsPage")

AssetDetailsPage.validateProps = t.strictInterface({
	pageTitle = t.optional(t.string),

	-- from mapStateToProps
	bundles = t.table,
	selectedItem = t.table,
	currentPage = t.string,
})

--[[
	Get Bundle Info to show instead of asset info
	Return nil if there is no relevant bundle info to show
]]
function AssetDetailsPage:getBundleInfo()
	local selectedItem = self.props.selectedItem
	if selectedItem.bundlesAssetIsIn and #selectedItem.bundlesAssetIsIn == 1 and not selectedItem.isForSale then
		local bundleId = selectedItem.bundlesAssetIsIn[1]
		return self.props.bundles[bundleId]
	end

	return nil
end

function AssetDetailsPage:attemptFetchFavorite()
	local bundleInfo = self:getBundleInfo()
	if bundleInfo then
		if bundleInfo.isFavorited == nil then
			self.props.fetchItemFavorite(bundleInfo.bundleId, Enum.AvatarItemType.Bundle)
		end
	else
		if self.props.selectedItem and self.props.selectedItem.isFavorited == nil then
			self.props.fetchItemFavorite(self.props.selectedItem.assetId, Enum.AvatarItemType.Asset)
		end
	end
end

function AssetDetailsPage:init()
	self.scrollingFrameRef = Roact.createRef()
end

function AssetDetailsPage:renderWithProviders(style, localized)
	local selectedItem = self.props.selectedItem
	local numFavorites = selectedItem.numFavorites
	local bundleInfo = self:getBundleInfo()
	local description, creatorText, titleText
	if bundleInfo then
		description = bundleInfo.description
		creatorText = bundleInfo.creatorName
		titleText = bundleInfo.name
	else
		description = selectedItem.description
		creatorText = selectedItem.creatorName
		titleText = selectedItem.name
	end

	return Roact.createElement(Page, {
		useLeaveButton = false,
		pageTitle = "Item", --TODO: Localize AVBURST-9792
		titleChildren = nil,
	}, {
		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			ScrollBarImageTransparency = 1,
			CanvasSize = UDim2.fromScale(1, 1),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			[Roact.Ref] = self.scrollingFrameRef,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, CONTENT_PADDING),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, VERTICAL_PADDING),
				PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
				PaddingRight = UDim.new(0, HORIZONTAL_PADDING),
			}),
			TitleText = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -10, 0, TEXT_FRAME_HEIGHT),
				LayoutOrder = 1,
				Text = titleText,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				RichText = true,
				TextWrapped = true,
				TextSize = TITLE_TEXT_SIZE,
				Font = Enum.Font.GothamSemibold,
				TextColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 32,
				})
			}),
			AssetDetailThumbnail = Roact.createElement(AssetDetailThumbnail, {
				LayoutOrder = 2,
				bundleInfo = bundleInfo,
				selectedItem = self.props.selectedItem,
			}),
			DetailsDescription = Roact.createElement(ExpandableTextArea, {
				LayoutOrder = 3,
				Text = description,
				width = UDim.new(1, -20),
				compactNumberOfLines = COMPACT_NUMBER_OF_LINES,
			}),
			AssetDetailFavorite = Roact.createElement(AssetDetailFavorite, {
				LayoutOrder = 4,
				numFavorites = numFavorites,
				bundleInfo = bundleInfo,
				selectedItem = self.props.selectedItem,
			}),
			ItemInfoList = Roact.createElement(ItemInfoList, {
				LayoutOrder = 5,
				genreText = (not bundleInfo and selectedItem.genres) and table.concat(selectedItem.genres, ", ") or nil,
				creatorText = creatorText,
				itemType = bundleInfo and Enum.AvatarItemType.Bundle or Enum.AvatarItemType.Asset,
				itemSubType = not bundleInfo and selectedItem.assetTypeId or nil,
				showAllDividers = true,
			}),
			BottomBarPaddingFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, IBConstants.BOTTOM_BAR_PADDING + IBConstants.BUTTON_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 6,
			}),
		}),
		AssetDetailBottomBar = Roact.createElement(AssetDetailBottomBar, {
			bundleInfo = bundleInfo,
		}),
	})
end

function AssetDetailsPage:render()
	return withStyle(function(style)
		return withLocalization({
		})(function(localized)
			return self:renderWithProviders(style, localized)
		end)
	end)
end

function AssetDetailsPage:didUpdate(prevProps)
	-- When navigating away from the AssetDetailsPage, reset the scrolling frame
	-- CanvasPosition. This way, if a user had scrolled down on the page when inspecting
	-- one item, it will not remain in that position when going to inspect another
	if self.props.currentPage ~= prevProps.currentPage then
		if prevProps.currentPage == Constants.InspectAndBuyAssetDetailsPageKey then
			-- Leaving Page
			local scrollingFrame = self.scrollingFrameRef:getValue()
			if scrollingFrame then
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
		elseif self.props.currentPage == Constants.InspectAndBuyAssetDetailsPageKey then
			-- Entering Page
			self:attemptFetchFavorite()
		end
	end
end

local function mapStateToProps(state, props)
	return {
		selectedItem = state.inspectAndBuy.SelectedItem,
		bundles = state.inspectAndBuy.Bundles,
		currentPage = state.menuPage
	}
end

local function mapDispatchToProps(dispatch)
	return {
		fetchItemFavorite = function(itemId, itemType)
			dispatch(GetFavoriteForItem(itemId, itemType))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetDetailsPage)
