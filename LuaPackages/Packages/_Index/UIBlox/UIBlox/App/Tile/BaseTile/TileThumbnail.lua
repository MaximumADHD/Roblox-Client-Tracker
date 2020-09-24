local BaseTile = script.Parent
local Tile = BaseTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local withStyle = require(UIBlox.Core.Style.withStyle)

local Images = require(UIBlox.App.ImageSet.Images)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local LoadableImage = require(UIBlox.App.Loading.LoadableImage)
local TileSelectionOverlay = require(BaseTile.TileSelectionOverlay)

local TileThumbnail = Roact.PureComponent:extend("TileThumbnail")

TileThumbnail.defaultProps = {
	imageSize = UDim2.new(1, 0, 1, 0),
}

local CORNER_RADIUS = UDim.new(0, 10)

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
				BackgroundColor3 = theme.PlaceHolder.Color,
				BackgroundTransparency = theme.PlaceHolder.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 0,
			}, {
				Image = not isImageSetImage and Roact.createElement(LoadableImage, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = theme.PlaceHolder.Color,
					BackgroundTransparency = theme.PlaceHolder.Transparency,
					Image = image,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = imageSize,
					ZIndex = 0,
					cornerRadius = UIBloxConfig.useNewUICornerRoundedCorners and hasRoundedCorners and CORNER_RADIUS or nil,
					showFailedStateWhenLoadingFailed = true,
					useShimmerAnimationWhileLoading = true,
				}),

				ImageSetImage = isImageSetImage and Roact.createElement(ImageSetComponent.Label, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = image,
					ImageColor3 = theme.UIEmphasis.Color,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = imageSize,
				}, {
					UICorner = UIBloxConfig.useNewUICornerRoundedCorners and hasRoundedCorners
						and Roact.createElement("UICorner", {
							CornerRadius = CORNER_RADIUS,
						}) or nil,
				}),

				UICorner = UIBloxConfig.useNewUICornerRoundedCorners and hasRoundedCorners
					and Roact.createElement("UICorner", {
						CornerRadius = CORNER_RADIUS,
					}) or nil,
			}),

			ComponentsFrame = overlayComponents and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 1,
			}, overlayComponents),

			SelectionOverlay = isSelected and Roact.createElement(TileSelectionOverlay, {
				ZIndex = 2,
				cornerRadius = hasRoundedCorners and CORNER_RADIUS or nil,
			}),

			RoundedCornersOverlay = not UIBloxConfig.useNewUICornerRoundedCorners and hasRoundedCorners
				and Roact.createElement(ImageSetComponent.Label, {
					BackgroundTransparency = 1,
					Image = Images["component_assets/circle_17_mask"],
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
