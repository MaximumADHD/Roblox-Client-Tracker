--[[
	This component is responsible for creating an clickable button for Overriding assets.
	There will be a thumbnail and asset title for the button.

	Necessary Props:
		Size, UDim2
		assetTypeEnum, Enum, a enum type that contians the name and value of the assetType.
		resultsArray, an array of tables, contains the data for overriding assets.
		onOverrideAssetSelected, function, will be called when a asset is selected.
		getOverrideAssets, function, funtion used to reuqest more asset data for overRide asset.

	Optional Props:
		LayoutOrder, number, will be used by the layout to change the component's position.
]]


local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Requests = Plugin.Core.Networking.Requests
local MakeChangeRequest = require(Requests.MakeChangeRequest)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local Urls = require(Util.Urls)
local Images = require(Util.Images)
local Colors = require(Util.Colors)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local InfiniteScrollingFrame = require(Plugin.Core.Components.InfiniteScrollingFrame)

local UILibrary = Libs.UILibrary
local StyledScrollingFrame = require(UILibrary.Components.StyledScrollingFrame)

local withTheme = ContextHelper.withTheme

local OverrideAssetView = Roact.PureComponent:extend("OverrideAssetView")

local TITLE_HEIGHT = 48
local CELL_PADDING_WIDTH = 24
local CELL_PADDING_HEIGHT = 26
local CELL_SIZE_WIDTH = 150
local CELL_SIZE_HEIGHT = 198
local MAX_CELL = 4
local PADDING = 12
local CHECK_ICON_OFFSET = 4
local CHECK_ICON_SIZE = 28

function OverrideAssetView:init(props)
	self.state = {
		selectedAssetId = 0,
	}

	self.newAssetInfo = {
		assetTypeEnum = props.assetTypeEnum,
		instances = props.instances
	}

	self.layouterRef = Roact.createRef()

	self.onAssetActivated = function(asset)
		local assetId = asset.Asset.Id

		-- For clicking the apply button.
		props.onOverrideAssetSelected(assetId)

		self.props.makeChangeRequest("OverrideAssetId", self.state.selectedAssetId, assetId)

		-- For UI
		self:setState({
			selectedAssetId = assetId
		})
	end

	self.requestOverrideAsset = function(targetPage)
		props.getOverrideAssets(targetPage)
	end
end

function OverrideAssetView:createAssets(resultsArray, theme)
	local assetConfigTheme = theme.assetConfig

	local itemList = {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, 1), -- Make sure we have enough space on each side while don't clip the edges.
			PaddingRight = UDim.new(0, 1),
			PaddingTop = UDim.new(0, PADDING),
		}),

		UIGridLayout = Roact.createElement("UIGridLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			CellPadding = UDim2.new(0, CELL_PADDING_WIDTH, 0, CELL_PADDING_HEIGHT),
			CellSize = UDim2.new(0, CELL_SIZE_WIDTH, 0, CELL_SIZE_HEIGHT),
			FillDirectionMaxCells = MAX_CELL,
			StartCorner = Enum.StartCorner.TopLeft,

			[Roact.Ref] = self.layouterRef,
		}),
	}

	local selectedAssetId = self.state.selectedAssetId
	for index, asset in pairs(resultsArray) do
		local assetId = asset.Asset.Id
		-- The thumbnial is scalled, the design request size of 150 x 150.
		-- But the endpoint for fetching thumbnial only works with 75 x 75
		local thumbnailUrl = Urls.constructAssetThumbnailUrl(assetId,
			Constants.THUMBNAIL_SIZE_LARGE,
			Constants.THUMBNAIL_SIZE_LARGE)
		local selected = selectedAssetId == assetId

		itemList[assetId] = Roact.createElement("TextButton", {
			Size = AssetConfigConstants.OverrideAssetItemSize,

			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Text = "",
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_MEDIUM,

			[Roact.Event.Activated] = function(rbx)
				self.onAssetActivated(asset)
			end,

			LayoutOrder = index,
		}, {
			UIListLayout = Roact.createElement("UIListLayout"),

			Border = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -TITLE_HEIGHT),

				BackgroundTransparency = 0,
				BackgroundColor3 = Colors.WHITE, -- need to match the background to fake transparency
				BorderSizePixel = 1,
				BorderColor3 = selected and Colors.BLUE_PRIMARY or Colors.GRAY_3,

				LayoutOrder = 1,
			}, {
				ThumbNail = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0, 0, 0, 0),

					BorderSizePixel = 1,
					BackgroundTransparency = 1,
					Image = thumbnailUrl,
				}),

				CheckedIcon = selected and Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, CHECK_ICON_OFFSET, 0, CHECK_ICON_OFFSET),
					Size = UDim2.new(0, CHECK_ICON_SIZE, 0, CHECK_ICON_SIZE),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					Image = Images.SELECTED_CHECK,
					ImageColor3 = Colors.BLUE_PRIMARY
				})
			}),

			Title = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),

				Text = asset.Asset.Name,
				Font = Constants.FONT,
				TextColor3 = assetConfigTheme.textColor,
				TextSize = Constants.FONT_SIZE_MEDIUM,

				BorderSizePixel = 0,
				BackgroundTransparency = 1,

				LayoutOrder = 2,
			})
		})
	end

	return itemList
end

function OverrideAssetView:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local Size = props.Size

		local itemList = self:createAssets(props.resultsArray or {}, theme)
		local publishAssetTheme = theme.publishAsset

		local layouterRef = self.layouterRef

		return Roact.createElement(InfiniteScrollingFrame, {
			Size = Size,

			BackgroundColor3 = publishAssetTheme.backgroundColor,
			layouterRef = layouterRef,

			nextPageFunc = self.requestOverrideAsset,

			LayoutOrder = props.LayoutOrder,
		}, itemList)
	end)
end

local function mapDispatchToProps(dispatch)
	return {
		makeChangeRequest = function(setting, currentValue, newValue)
			dispatch(MakeChangeRequest(setting, currentValue, newValue))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(OverrideAssetView)