--[[
	This component holds all the detail page we want to show to the user. The content being displayed here should be
	determined by the parent. And each time the componnet changes, it needs to noticfy the parent about the change.

	Props:
	contentTable = {
		index = {RoactElement = RoactElement, Name = String}

		enum assetTypeId, the type of the asset being configured

		boolean displayOwnership, display the ownership widget (default to true if nil)
		boolean displayGenre, display the genre widget (default to true if nil)
		boolean displayCopy, display the copy widget (default to true if nil)
		boolean displayComment, display the comment widget (default to true if nil)
		boolean displayDisclosure, display the disclosure widget (default to true if nil)
		boolean displayAssetType, display the text indicating the asset type
	}
	Will be supporting NameField, DescriptionField, AccessField, GenreField, CopyField and CommentField. Index is used to
	determine their order on the page.

	onNameChange, functoin, callback when name changes.
	onDescChange, functoin, callback when description changes.
	onOwnerSelected, functoin, callback when owner changes.
	onGenreSelected, functoin, callback when genre changes.
	toggleCopy, functoin, callback when copy changes.
	toggleComment, functoin, callback when comment changes.
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

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local ConfigTextField = require(AssetConfiguration.ConfigTextField)
local ConfigAccess = require(AssetConfiguration.ConfigAccess)
local ConfigGenre = require(AssetConfiguration.ConfigGenre)
local ConfigCopy = require(AssetConfiguration.ConfigCopy)
local ConfigComment = require(AssetConfiguration.ConfigComment)

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

function PublishAsset:init(props)
	self.state = {
	}

	self.baseFrameRef = Roact.createRef()
end

function PublishAsset:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props
			local state = self.state

			local Size = props.Size
			local LayoutOrder = props.LayoutOrder

			local assetId = props.assetId
			local name = props.name
			local description = props.description
			local owner = props.owner
			local genres = props.genres
			local allowCopy = props.allowCopy
			local copyOn = props.copyOn
			local allowComment = props.allowComment
			local commentOn = props.commentOn

			local assetTypeEnum = props.assetTypeEnum

			local onNameChange = props.onNameChange
			local onDescChange = props.onDescChange
			local onOwnerSelected = props.onOwnerSelected
			local onGenreSelected = props.onGenreSelected
			local toggleCopy = props.toggleCopy
			local toggleComment = props.toggleComment

			local displayOwnership = nil == props.displayOwnership or props.displayOwnership
			local displayGenre = nil == props.displayGenre or props.displayGenre
			local displayCopy = nil == props.displayCopy or props.displayCopy
			local displayComment = nil == props.displayComment or props.displayComment
			local displayAssetType = nil == props.displayAssetType or props.displayAssetType

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

					LayoutOrder = orderIterator:getNextOrder()
				}),

				Description = Roact.createElement(ConfigTextField, {
					Title = publishAssetLocalized.Description,
					TotalHeight = DESC_HEIGHT,
					MaxCount = AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT ,
					TextChangeCallBack = onDescChange,
					TextContent = description,

					LayoutOrder = orderIterator:getNextOrder()
				}),

				AssetType = displayAssetType and Roact.createElement(TitledFrame, {
					Title = publishAssetLocalized.AssetType,
					MaxHeight = ASSET_TYPE_HEIGHT,
					TextSize = Constants.FONT_SIZE_TITLE,
					LayoutOrder = orderIterator:getNextOrder()
				}, {
					Label = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						TextColor3 = publishAssetTheme.textColor,

						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_TITLE,

						Text = publishAssetLocalized.AssetTextDislpay[assetTypeEnum],
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
					})
				}),

				Ownership = displayOwnership and Roact.createElement(ConfigAccess, {
					Title = publishAssetLocalized.Ownership,
					owner = owner,

					TotalHeight = ACCESS_HEIGHT,

					onDropDownSelect = onOwnerSelected,

					LayoutOrder = orderIterator:getNextOrder()
				}),

				Genre = displayGenre and Roact.createElement(ConfigGenre, {
					Title = publishAssetLocalized.Genre,
					genres = genres,

					TotalHeight = GENRE_HEIGHT,

					onDropDownSelect = onGenreSelected,

					LayoutOrder = orderIterator:getNextOrder()
				}),

				DividerBase = displayGenre and Roact.createElement("Frame", {
					-- Confirm a better number
					Size = UDim2.new(1, 0, 0, DIVIDER_BASE_HEIGHT),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					LayoutOrder = orderIterator:getNextOrder()
				}, {
					Divider = Roact.createElement("Frame", {
						-- The postion includes current padding.
						Position = UDim2.new(0, 4, 0, 0),
						Size = UDim2.new(0, DIVIDER_WIDTH, 0, 2),

						BorderSizePixel = 0,
						BackgroundTransparency = 0,
						BackgroundColor3 = theme.divider.horizontalLineColor
					})
				}),

				Copy = displayCopy and Roact.createElement(ConfigCopy, {
					Title = publishAssetLocalized.Copy,

					TotalHeight = configCopyHeight,
					CopyEnabled = allowCopy,
					CopyOn = copyOn,

					ToggleCallback = toggleCopy,

					LayoutOrder = orderIterator:getNextOrder()
				}),

				Comment = displayComment and Roact.createElement(ConfigComment, {
					Title = publishAssetLocalized.Comments,

					TotalHeight = COMMENT_HEIGHT,
					CommentEnabled = allowComment,
					CommentOn = commentOn,

					ToggleCallback = toggleComment,

					LayoutOrder = orderIterator:getNextOrder()
				}),
			})
		end)
	end)
end

return PublishAsset