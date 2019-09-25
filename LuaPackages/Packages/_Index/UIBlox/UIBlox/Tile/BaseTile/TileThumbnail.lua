local BaseTileRoot = script.Parent
local UIBloxRoot = BaseTileRoot.Parent.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local withStyle = require(UIBloxRoot.Style.withStyle)

local Images = require(UIBloxRoot.ImageSet.Images)
local ImageSetComponent = require(UIBloxRoot.ImageSet.ImageSetComponent)
local LoadableImage = require(UIBloxRoot.Loading.LoadableImage)
local TileSelectionOverlay = require(BaseTileRoot.TileSelectionOverlay)

local TileThumbnail = Roact.PureComponent:extend("TileThumbnail")

TileThumbnail.defaultProps = {
	imageSize = UDim2.new(1, 0, 1, 0),
}

function TileThumbnail:render()
	local hasRoundedCorners = self.props.hasRoundedCorners
	local image = self.props.Image
	local imageSize = self.props.imageSize
	local isSelected = self.props.isSelected
	local overlayComponents = self.props.overlayComponents

	local isImageSetImage = typeof(image) == "table"

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			ImageContainer = Roact.createElement("Frame", {
				BackgroundColor3 = theme.BackgroundUIDefault.Color,
				BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 0,
			}, {
				Image = not isImageSetImage and Roact.createElement(LoadableImage, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = theme.BackgroundUIDefault.Color,
					BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
					Image = image,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = imageSize,
					ZIndex = 0,
					showFailedStateWhenLoadingFailed = true,
					useShimmerAnimationWhileLoading = true,
				}),

				ImagesetImage = isImageSetImage and Roact.createElement(ImageSetComponent.Label, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = theme.BackgroundUIDefault.Color,
					BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
					BorderSizePixel = 0,
					Image = image,
					ImageColor3 = theme.UIEmphasis.Color,
					Transparency = theme.UIEmphasis.Transparency,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = imageSize,
				}),
			}),

			ComponentsFrame = overlayComponents and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 1,
			}, overlayComponents),

			SelectionOverlay = isSelected and Roact.createElement(TileSelectionOverlay, {
				ZIndex = 2,
			}),

			RoundedCornersOverlay = hasRoundedCorners and Roact.createElement(ImageSetComponent.Label, {
				BackgroundTransparency = 1,
				Image = Images["buttons/buttonMask"],
				ImageColor3 = theme.BackgroundDefault.Color,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(8, 8, 9, 9),
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 3,
			}),
		})
	end)
end

return TileThumbnail
