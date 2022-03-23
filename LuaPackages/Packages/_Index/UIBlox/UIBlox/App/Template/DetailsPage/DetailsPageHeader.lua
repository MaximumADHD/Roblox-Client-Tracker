local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label

local Images = require(UIBlox.App.ImageSet.Images)
local LoadableImage = require(App.Loading.LoadableImage)
local StyledTextLabel = require(App.Text.StyledTextLabel)
--local ActionBar = require(App.Button.ActionBar)

local Constants = require(DetailsPage.Constants)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local DetailsPageTitleContent = require(DetailsPage.DetailsPageTitleContent)

local DROP_SHADOW_IMAGE = "component_assets/dropshadow_thumbnail_28"

local DetailsPageHeader = Roact.PureComponent:extend("DetailsPageHeader")

local BOTTOM_MARGIN = 16
local INNER_PADDING = 16
local ImageHeight = {
	Desktop = 200,
	Mobile = 100,
}

--DEV
local imageWidth = 200
local imageWidthMobile = 100

DetailsPageHeader.defaultProps = {
	thumbnailAspectRatio = Vector2.new(1, 1),
	mobileMode = false,
}

DetailsPageHeader.validateProps = t.strictInterface({
	thumbnailImageUrl = t.optional(t.string),
	thumbnailAspectRatio = t.optional(t.Vector2),
	titleText = t.optional(t.string),
	subTitleText = t.optional(t.string),
	infoContentComponent = t.optional(t.table),
	actionBarProps = t.optional(t.table),

	mobileMode = t.optional(t.boolean),
})

function DetailsPageHeader:renderThumbnail(style, thumbnailWidth, thumbnailHeight)
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
		DropShadow = Roact.createElement(ImageSetLabel, {
			Size = UDim2.new(1, 0, 0, 28),
			Position = UDim2.fromScale(0, 1),
			BackgroundTransparency = 1,
			Image = Images[DROP_SHADOW_IMAGE],
			ImageColor3 = style.Theme.DropShadow.Color,
			ImageTransparency = style.Theme.DropShadow.Transparency,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(32, 0, 33, 28),
		}),
	})
end

function DetailsPageHeader:renderDesktopMode(style)
	local thumbnailHeight = ImageHeight.Desktop
	local thumbnailWidth = thumbnailHeight * (self.props.thumbnailAspectRatio.X / self.props.thumbnailAspectRatio.Y)
	return {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Constants.SideMargin.Desktop),
			PaddingRight = UDim.new(0, Constants.SideMargin.Desktop),
			PaddingBottom = UDim.new(0, BOTTOM_MARGIN),
		}),
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
			Padding = UDim.new(0, 24),
		}),
		ThumbnailTileFrame = self:renderThumbnail(style, thumbnailWidth, thumbnailHeight),
		InfoFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, -(thumbnailWidth + Constants.SideMargin.Desktop * 2), 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
			}),
			TitleInfo = Roact.createElement(DetailsPageTitleContent, {
				titleText = self.props.titleText,
				subTitleText = self.props.subTitleText,
				infoContentComponent = self.props.infoContentComponent,
				verticalAlignment = Enum.VerticalAlignment.Bottom,
				layoutOrder = 1,
			}),
			Padding = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, INNER_PADDING),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}),
			ActonBarFrame = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				--Place holder for action bar TODO: https://jira.rbx.com/browse/APPEXP-132
				Placeholder = Roact.createElement("Frame", {
					Size = UDim2.new(0, 300, 0, 48),
					BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
					BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
					BorderColor3 = style.Theme.TextDefault.Color,
					BorderSizePixel = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					Label = Roact.createElement(StyledTextLabel, {
						text = "Placeholder for action bar",
						fontStyle = style.Font.Body,
						colorStyle = style.Theme.TextDefault,
						automaticSize = Enum.AutomaticSize.XY,
					}),
				}),
				--
			}),
		}),
	}
end

function DetailsPageHeader:renderMobileMode(style)
	return {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Constants.SideMargin.Mobile),
			PaddingRight = UDim.new(0, Constants.SideMargin.Mobile),
			PaddingBottom = UDim.new(0, BOTTOM_MARGIN),
		}),
		ThumbnailTileFrame = self:renderThumbnail(style, imageWidthMobile, imageWidthMobile),
	}
end

function DetailsPageHeader:render()
	local mobileMode = self.props.mobileMode
	local displayMode = mobileMode and "Mobile" or "Desktop"

	local backgroundBarHeight = Constants.HeaderBarBackgroundHeight[displayMode]
	local gradientHeight = (imageWidth + BOTTOM_MARGIN) - backgroundBarHeight

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
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				AnchorPoint = Vector2.new(0, 1),
				BorderSizePixel = 0,
				LayoutOrder = 1,
			}, {
				Gradient = Roact.createElement("UIGradient", {
					Rotation = 270,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0.25),
						NumberSequenceKeypoint.new(1, 0.9999),
					}),
				}),
			}),
			BackgroundBar = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, backgroundBarHeight),
				Position = UDim2.fromScale(0, 1),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, mobileMode and self:renderMobileMode(style) or self:renderDesktopMode(style)),
		})
	end)
end

return DetailsPageHeader
