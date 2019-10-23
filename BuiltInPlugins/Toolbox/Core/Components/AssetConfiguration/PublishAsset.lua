--[[
	This component holds all the detail page we want to show to the user. The content being displayed here should be
	determined by the parent. And each time the componnet changes, it needs to noticfy the parent about the change.

	Necessary Props:
		Size, UDim2, used to set the size for the whole page.
		name, string, used to represent the asset's name. Nil for new asset. Can't be nil.
		description, string, used to represent the asset's description.
		owner, table, contain data structure describe the owner.
		genres, arrar of string, it's an array, even you can only select one genre.
		allowCopy, bool, decide if user can change the copyOn toggle button or not.
		copyOn, bool, decide if the user has set the copyOn to true or false.
		allowComment, bool, decide if other users can change comment on this asset or not.
		commentOn, bool, decide if the comment on is true or false.
		price, number, the price for the asset, if applicable.
		minPrice, number, the minimal price you can set.
		maxPrice, number, the maximal price you can set.

		assetTypeEnum, enum, asset type.

		onNameChange, functoin, callback when name changes.
		onDescChange, functoin, callback when description changes.
		onOwnerSelected, functoin, callback when owner changes.
		onGenreSelected, functoin, callback when genre changes.
		toggleCopy, functoin, callback when copy changes.
		toggleComment, functoin, callback when comment changes.
		onStatusChange, functon, callback when sales status changes.
		onPriceChange, function, callback when price changes.

		displayOwnership, bool, if we want to show ownership.
		displayGenre, bool, genre.
		displayCopy, bool, copy.
		displayComment, bool, comment.
		displayAssetType, bool, assetType.
		displaySale, bool, sale.
		displayPrice, bool, price.
		isPriceValid, bool, used to tell user if the price is legit or not.

	Optional Props:
		LayoutOrder, number, used by the layouter to set the position of the component.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local UILibrary = Libs.UILibrary
local StyledScrollingFrame = require(UILibrary.Components.StyledScrollingFrame)
local TitledFrame = require(Libs.UILibrary.Components.TitledFrame)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local ConfigTextField = require(AssetConfiguration.ConfigTextField)
local ConfigAccess = require(AssetConfiguration.ConfigAccess)
local ConfigGenre = require(AssetConfiguration.ConfigGenre)
local ConfigCopy = require(AssetConfiguration.ConfigCopy)
local ConfigComment = require(AssetConfiguration.ConfigComment)
local SalesComponent = require(AssetConfiguration.SalesComponent)
local PriceComponent = require(AssetConfiguration.PriceComponent)

local PublishAsset = Roact.PureComponent:extend("PublishAsset")

local NAME_HEIGHT = 100
local DESC_HEIGHT = 320
local ACCESS_HEIGHT = 70
local ASSET_TYPE_HEIGHT = 60
local GENRE_HEIGHT = 70
local COPY_HEIGHT = 80
local COMMENT_HEIGHT = 80
local PADDING = 24
local HEIGHT_FOR_ACCTOUN_SETTING_TEXT = 60
local DIVIDER_BASE_HEIGHT = 20
local DIVIDER_WIDTH = 672

local function createDivider(props)
	local size = props.size
	local order = props.order
	local theme = props.theme

	return Roact.createElement("Frame", {
		Size = size,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = order,
	}, {
		Divider = Roact.createElement("Frame", {
			-- The postion includes current padding.
			Position = UDim2.new(0, 4, 0, 0),
			Size = UDim2.new(0, DIVIDER_WIDTH, 0, 2),

			BorderSizePixel = 0,
			BackgroundTransparency = 0,
			BackgroundColor3 = theme.divider.horizontalLineColor,
		})
	})
end

function PublishAsset:init(props)
	self.state = {
	}

	self.baseFrameRef = Roact.createRef()
end

function PublishAsset:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props

			local Size = props.Size
			local LayoutOrder = props.LayoutOrder

			local name = props.name
			local description = props.description
			local owner = props.owner
			local genres = props.genres
			local allowCopy = props.allowCopy
			local copyOn = props.copyOn
			local allowComment = props.allowComment
			local commentOn = props.commentOn
			local price = props.price
			local minPrice = props.minPrice
			local maxPrice = props.maxPrice

			local assetTypeEnum = props.assetTypeEnum

			local onNameChange = props.onNameChange
			local onDescChange = props.onDescChange
			local onOwnerSelected = props.onOwnerSelected
			local onGenreSelected = props.onGenreSelected
			local toggleCopy = props.toggleCopy
			local toggleComment = props.toggleComment

			local displayOwnership = props.displayOwnership
			local displayGenre = props.displayGenre
			local displayCopy = props.displayCopy
			local displayComment = props.displayComment
			local displayAssetType = props.displayAssetType
			local displaySale = props.displaySale
			local displayPrice = props.displayPrice

			local isPriceValid = props.isPriceValid
			local onStatusChange = props.onStatusChange
			local onPriceChange = props.onPriceChange

			-- If this is a catalog asset, we check this.
			local canChangeSalesStatus
			local allowedAssetTypesForRelease = props.allowedAssetTypesForRelease
			local newAssetStatus = props.newAssetStatus
			local currentAssetStatus = props.currentAssetStatus
			if AssetConfigUtil.isCatalogAsset(assetTypeEnum) then
				canChangeSalesStatus = AssetConfigUtil.isReadyForSale(newAssetStatus)
			else -- For everything else, we check the allowed list to toggle the sales status
				-- For first release, we support only plugin. So, we check only plugin.
				canChangeSalesStatus = AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum) and true or false
			end

			local orderIterator = LayoutOrderIterator.new()

			local publishAssetTheme = theme.publishAsset
			local publishAssetLocalized = localizedContent.AssetConfig.PublishAsset

			local configCopyHeight = COPY_HEIGHT
			if not allowCopy then
				configCopyHeight = configCopyHeight + HEIGHT_FOR_ACCTOUN_SETTING_TEXT
			end

			return Roact.createElement(StyledScrollingFrame, {
				Size = Size,

				BackgroundTransparency = 0,
				BackgroundColor3 = publishAssetTheme.backgroundColor,
				BorderSizePixel = 0,

				LayoutOrder = LayoutOrder,

				[Roact.Ref] = self.baseFrameRef,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, PADDING),
					PaddingBottom = UDim.new(0, PADDING),
					PaddingLeft = UDim.new(0, PADDING),
					PaddingRight = UDim.new(0, PADDING),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5),

					[Roact.Change.AbsoluteContentSize] = function(rbx)
						self.baseFrameRef.current.CanvasSize = UDim2.new(Size.X.Scale, Size.X.Offset, 0, rbx.AbsoluteContentSize.y + PADDING*2)
					end,
				}),

				Title = Roact.createElement(ConfigTextField, {
					Title = publishAssetLocalized.Title,
					TotalHeight = NAME_HEIGHT,
					MaxCount = AssetConfigConstants.NAME_CHARACTER_LIMIT,
					TextChangeCallBack = onNameChange,
					TextContent = name,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				Description = Roact.createElement(ConfigTextField, {
					Title = publishAssetLocalized.Description,
					TotalHeight = DESC_HEIGHT,
					MaxCount = AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT ,
					TextChangeCallBack = onDescChange,
					TextContent = description,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				AssetType = displayAssetType and Roact.createElement(TitledFrame, {
					Title = publishAssetLocalized.AssetType,
					MaxHeight = ASSET_TYPE_HEIGHT,
					TextSize = Constants.FONT_SIZE_TITLE,
					LayoutOrder = orderIterator:getNextOrder(),
				}, {
					Label = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						TextColor3 = publishAssetTheme.textColor,

						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_TITLE,

						Text = publishAssetLocalized.AssetTextDisplay[assetTypeEnum],
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
					})
				}),

				Ownership = displayOwnership and Roact.createElement(ConfigAccess, {
					Title = publishAssetLocalized.Ownership,
					owner = owner,

					TotalHeight = ACCESS_HEIGHT,

					onDropDownSelect = onOwnerSelected,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				Genre = displayGenre and Roact.createElement(ConfigGenre, {
					Title = publishAssetLocalized.Genre,
					genres = genres,

					TotalHeight = GENRE_HEIGHT,

					onDropDownSelect = onGenreSelected,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				DividerBase = displayGenre and Roact.createElement(createDivider, {
					size = UDim2.new(1, 0, 0, DIVIDER_BASE_HEIGHT),
					order = orderIterator:getNextOrder(),
					theme = theme,
				}),

				Copy = displayCopy and Roact.createElement(ConfigCopy, {
					Title = publishAssetLocalized.Copy,

					TotalHeight = configCopyHeight,
					CopyEnabled = allowCopy,
					CopyOn = copyOn,

					ToggleCallback = toggleCopy,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				Comment = displayComment and Roact.createElement(ConfigComment, {
					Title = publishAssetLocalized.Comments,

					TotalHeight = COMMENT_HEIGHT,
					CommentEnabled = allowComment,
					CommentOn = commentOn,

					ToggleCallback = toggleComment,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				DividerBase2 = displaySale and Roact.createElement(createDivider, {
					size = UDim2.new(1, 0, 0, DIVIDER_BASE_HEIGHT),
					order = orderIterator:getNextOrder(),
					theme = theme,
				}),

				Sale = displaySale and Roact.createElement(SalesComponent, {
					Title = localizedContent.Sales.Sale,

					NewAssetStatus = newAssetStatus,
					CurrentAssetStatus = currentAssetStatus,
					OnStatusChange = onStatusChange,
					CanChangeSalesStatus = canChangeSalesStatus,

					LayoutOrder = orderIterator:getNextOrder(),
				}),

				Price = displayPrice and Roact.createElement(PriceComponent, {
					AssetTypeEnum = assetTypeEnum,
					AllowedAssetTypesForRelease = allowedAssetTypesForRelease,
					NewAssetStatus = newAssetStatus,
					OnPriceChange = onPriceChange,
					IsPriceValid = isPriceValid,

					Price = price,
					MinPrice = minPrice,
					MaxPrice = maxPrice,

					LayoutOrder = orderIterator:getNextOrder(),
				})
			})
		end)
	end)
end

return PublishAsset