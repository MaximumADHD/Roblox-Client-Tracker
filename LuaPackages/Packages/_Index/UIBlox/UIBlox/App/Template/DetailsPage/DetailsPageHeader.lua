--!nonstrict
local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label

local Images = require(UIBlox.App.ImageSet.Images)
local LoadableImage = require(App.Loading.LoadableImage)
local ActionBar = require(App.Button.ActionBar)

local DeviceType = require(App.Style.Constants).DeviceType

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local DetailsPageTitleContent = require(DetailsPage.DetailsPageTitleContent)

local DROP_SHADOW_IMAGE = "component_assets/dropshadow_thumbnail_28"
local DROP_SHADOW_HEIGHT = 28

local DetailsPageHeader = Roact.PureComponent:extend("DetailsPageHeader")

local DEFAULT_HEADER_BAR_HEIGHT = 80

local SIDE_MARGIN_DESKTOP = 48
local SIDE_MARGIN_PHONE = 24

local BOTTOM_MARGIN = 16
local INNER_PADDING = 16
local ITEM_PADDING = 24
local BASE_GRADIENT = 44

local ACTIONBAR_WIDTH = 380
local ACTION_BAR_HEIGHT = 48

DetailsPageHeader.defaultProps = {
	thumbnailHeight = 200,
	thumbnailAspectRatio = Vector2.new(1, 1),
	actionBarHeight = ACTION_BAR_HEIGHT,
	actionBarWidth = ACTIONBAR_WIDTH,
}

DetailsPageHeader.validateProps = t.strictInterface({
	thumbnailImageUrl = t.optional(t.string),
	thumbnailAspectRatio = t.optional(t.Vector2),
	thumbnailHeight = t.optional(t.number),
	titleText = t.optional(t.string),
	subTitleText = t.optional(t.string),
	renderInfoContent = t.optional(t.callback),

	headerBarBackgroundHeight = t.optional(t.number),
	sideMargin = t.optional(t.number),
	itemPadding = t.optional(t.number),
	bottomMargin = t.optional(t.number),
	gradientHeight = t.optional(t.number),
	thumbnailShadowHeight = t.optional(t.number),
	actionBarHeight = t.optional(t.number),
	actionBarWidth = t.optional(t.number),

	actionBarProps = t.optional(ActionBar.validateProps),

	deviceType = t.optional(t.string),
})

function DetailsPageHeader:renderThumbnail(style, shadowHeight, thumbnailWidth, thumbnailHeight)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(thumbnailWidth, thumbnailHeight),
		LayoutOrder = 1,
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		ThumbnailTile = Roact.createElement(LoadableImage, {
			cornerRadius = UDim.new(0, 8),
			Size = UDim2.fromScale(1, 1),
			Image = self.props.thumbnailImageUrl,
		}),
		DropShadow = if shadowHeight > 0
			then Roact.createElement(ImageSetLabel, {
				Size = UDim2.new(1, 0, 0, DROP_SHADOW_HEIGHT),
				Position = UDim2.fromScale(0, 1),
				BackgroundTransparency = 1,
				Image = Images[DROP_SHADOW_IMAGE],
				ImageColor3 = style.Theme.DropShadow.Color,
				ImageTransparency = style.Theme.DropShadow.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(32, 0, 33, 28),
			})
			else nil,
	})
end

function DetailsPageHeader:renderDesktopMode(style)
	local thumbnailHeight = self.props.thumbnailHeight
	local thumbnailWidth = thumbnailHeight * (self.props.thumbnailAspectRatio.X / self.props.thumbnailAspectRatio.Y)
	local sideMargin = self.props.sideMargin or SIDE_MARGIN_DESKTOP
	local itemPadding = self.props.itemPadding or ITEM_PADDING
	local thumbnailShadowHeight = DROP_SHADOW_HEIGHT
	if self.props.thumbnailShadowHeight ~= nil then
		thumbnailShadowHeight = self.props.thumbnailShadowHeight
	end

	return {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, sideMargin),
			PaddingRight = UDim.new(0, sideMargin),
			PaddingBottom = UDim.new(0, BOTTOM_MARGIN),
		}),
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
			Padding = UDim.new(0, itemPadding),
		}),
		ThumbnailTileFrame = self:renderThumbnail(style, thumbnailShadowHeight, thumbnailWidth, thumbnailHeight),
		InfoFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, -(thumbnailWidth + sideMargin * 2), 1, 0),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 2,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),
			TitleInfo = Roact.createElement(DetailsPageTitleContent, {
				titleText = self.props.titleText,
				subTitleText = self.props.subTitleText,
				renderInfoContent = self.props.renderInfoContent,
				verticalAlignment = Enum.VerticalAlignment.Top,
				layoutOrder = 1,
			}),
			Padding = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, INNER_PADDING),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}),
			ActonBarFrame = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(self.props.actionBarWidth, self.props.actionBarHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				ActionBar = self.props.actionBarProps and Roact.createElement(ActionBar, {
					button = self.props.actionBarProps.button,
					icons = self.props.actionBarProps.icons,
					iconSize = self.props.actionBarProps.iconSize,
					buttonHeight = self.props.actionBarProps.buttonHeight,
					buttonPadding = self.props.actionBarProps.buttonPadding,
					textButtons = self.props.actionBarProps.textButtons,
					enableButtonAtStart = true,
					marginOverride = {
						left = 0,
						right = 0,
						top = 0,
						bottom = 0,
					},
					horizontalAlignment = Enum.HorizontalAlignment.Left,
				}) or nil,
			}),
		}),
	}
end

function DetailsPageHeader:renderisPhone(style)
	local thumbnailHeight = self.props.thumbnailHeight
	local thumbnailWidth = thumbnailHeight * (self.props.thumbnailAspectRatio.X / self.props.thumbnailAspectRatio.Y)
	local sideMargin = self.props.sideMargin or SIDE_MARGIN_PHONE

	return {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, sideMargin),
			PaddingRight = UDim.new(0, sideMargin),
			PaddingBottom = UDim.new(0, BOTTOM_MARGIN),
		}),
		ThumbnailTileFrame = self:renderThumbnail(style, thumbnailWidth, thumbnailHeight),
	}
end

function DetailsPageHeader:render()
	local isPhone = self.props.deviceType == DeviceType.Phone

	local thumbnailHeight = self.props.thumbnailHeight
	local headerBarBackgroundHeight = self.props.headerBarBackgroundHeight or DEFAULT_HEADER_BAR_HEIGHT

	local gradientHeight = self.props.gradientHeight
		or ((thumbnailHeight + BOTTOM_MARGIN) - headerBarBackgroundHeight + BASE_GRADIENT)
	local bottomMargin = self.props.bottomMargin

	return withStyle(function(style)
		local theme = style.Theme

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}),
			GradientBar = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, gradientHeight),
				BackgroundColor3 = theme.BackgroundDefault.Color,
				AnchorPoint = Vector2.new(0, 1),
				BorderSizePixel = 0,
				LayoutOrder = 1,
			}, {
				Gradient = Roact.createElement("UIGradient", {
					Rotation = 270,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(0.5, 0.25),
						NumberSequenceKeypoint.new(1, 1),
					}),
				}),
			}),
			BackgroundBar = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, headerBarBackgroundHeight),
				Position = UDim2.fromScale(0, 1),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, isPhone and self:renderisPhone(style, thumbnailHeight) or self:renderDesktopMode(
				style,
				thumbnailHeight
			)),
			Padding = if bottomMargin
				then Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, bottomMargin),
					BackgroundTransparency = 1,
					LayoutOrder = 3,
				})
				else nil,
		})
	end)
end

return DetailsPageHeader
