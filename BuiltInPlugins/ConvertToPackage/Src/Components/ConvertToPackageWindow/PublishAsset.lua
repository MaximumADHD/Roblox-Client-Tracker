--[[
	This component is what displays the modifyable data abut the package that you would like to convert.

	Props:
	contentTable = {
		index = {RoactElement = RoactElement, Name = String}
	}
	Will be supporting NameField, DescriptionField, AccessField, and CommentField. Index is used to
	determine their order on the page.

	onNameChange, function, callback when name changes.
	onDescChange, function, callback when description changes.
	onOwnerSelected, function, callback when owner changes.
	toggleComment, function, callback when comment changes.
]]
local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local UILibrary = Packages.UILibrary
local StyledScrollingFrame = require(UILibrary.Components.StyledScrollingFrame)

local Util = Plugin.Src.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)

local withContext = require(Plugin.Src.ContextServices.withContext)


local ConvertToPackageWindow = Plugin.Src.Components.ConvertToPackageWindow
local ConfigTextField = require(ConvertToPackageWindow.ConfigTextField)
local ConfigAccess = require(ConvertToPackageWindow.ConfigAccess)
local ConfigComment = require(ConvertToPackageWindow.ConfigComment)

local PublishAsset = Roact.PureComponent:extend("PublishAsset")

local NAME_HEIGHT = 100
local DESC_HEIGHT = 320
local ACCESS_HEIGHT = 70
local COMMENT_HEIGHT = 80
local PADDING = 24

function PublishAsset:init(props)
	self.state = {
	}

	self.baseFrameRef = Roact.createRef()
end

function PublishAsset:render()
	return withContext(function(localization,theme)
		local props = self.props

		local Size = props.Size
		local LayoutOrder = props.LayoutOrder

		local name = props.name
		local description = props.description
		local owner = props.owner
		local allowComment = props.allowComment
		local commentOn = props.commentOn
		local onNameChange = props.onNameChange
		local onDescChange = props.onDescChange
		local onOwnerSelected = props.onOwnerSelected
		local toggleComment = props.toggleComment

		local orderIterator = LayoutOrderIterator.new()

		local publishAssetTheme = theme.publishAsset
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
					-- workaround because we do not disconnect events before we start unmounting host components.
					-- see https://github.com/Roblox/roact/issues/235 for more info
					if not self.baseFrameRef.current then return end

					self.baseFrameRef.current.CanvasSize = UDim2.new(Size.X.Scale, Size.X.Offset, 0, rbx.AbsoluteContentSize.y + PADDING*2)
				end,
			}),

			Title = Roact.createElement(ConfigTextField, {
				Title = localization:getText("General", "Title"),
				TotalHeight = NAME_HEIGHT,
				MaxCount = Constants.NAME_CHARACTER_LIMIT,
				TextChangeCallBack = onNameChange,
				TextContent = name,
				LayoutOrder = orderIterator:getNextOrder()
			}),

			Description = Roact.createElement(ConfigTextField, {
				Title = localization:getText("General", "Description"),
				TotalHeight = DESC_HEIGHT,
				MaxCount = Constants.DESCRIPTION_CHARACTER_LIMIT ,
				TextChangeCallBack = onDescChange,
				TextContent = description,

				LayoutOrder = orderIterator:getNextOrder()
			}),

			Ownership = Roact.createElement(ConfigAccess, {
				Title = localization:getText("General", "Ownership"),
				owner = owner,

				TotalHeight = ACCESS_HEIGHT,

				onDropDownSelect = onOwnerSelected,

				LayoutOrder = orderIterator:getNextOrder()
			}),

			Comment = Roact.createElement(ConfigComment, {
				Title = localization:getText("General", "Comments"),

				TotalHeight = COMMENT_HEIGHT,
				CommentEnabled = allowComment,
				CommentOn = commentOn,

				ToggleCallback = toggleComment,

				LayoutOrder = orderIterator:getNextOrder()
			}),
		})
	end)
end

return PublishAsset