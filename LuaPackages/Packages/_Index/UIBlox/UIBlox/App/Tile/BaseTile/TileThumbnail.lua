--!nonstrict
local BaseTile = script.Parent
local Tile = BaseTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local LoadableImage = require(UIBlox.App.Loading.LoadableImage)
local TileSelectionOverlay = require(BaseTile.TileSelectionOverlay)
local TileUnselectedOverlay = require(BaseTile.TileUnselectedOverlay)

local TileThumbnail = Roact.PureComponent:extend("TileThumbnail")

TileThumbnail.validateProps = t.strictInterface({
	-- Optional whether this component will have rounded corner or not
	hasRoundedCorners = t.optional(t.boolean),

	-- Optional corner radius of the component
	cornerRadius = t.optional(t.UDim),

	-- Optional the thumbnail image
	Image = t.optional(t.union(t.string, t.table)),

	-- Optional the thumbnail image size
	imageSize = t.optional(t.UDim2),

	-- Optional the thumbnail image color
	imageColor = t.optional(t.Color3),

	-- Optional the thumbnail image transparency
	imageTransparency = t.optional(t.number),

	-- Optional whether the tile thumbnail is selected or not
	isSelected = t.optional(t.boolean),

	-- Optional whether the tile is part of a grid where multiple tiles can be selected
	multiSelect = t.optional(t.boolean),

	-- Optional overlay components on the tile thumbnail
	overlayComponents = t.optional(t.table),

	-- Optional backgroundImage of the tile
	backgroundImage = t.optional(t.union(t.string, t.table)),

	-- Scale type of image thumbnail
	scaleType = t.optional(t.enum(Enum.ScaleType)),

	-- Optional callback for when the image is loaded
	onThumbnailLoaded = t.optional(t.callback),
})

TileThumbnail.defaultProps = {
	imageSize = UDim2.fromScale(1, 1),
	imageTransparency = 0,
	cornerRadius = UDim.new(0, 10),
	scaleType = Enum.ScaleType.Stretch,
}

function TileThumbnail:render()
	local hasRoundedCorners = self.props.hasRoundedCorners
	local image = self.props.Image
	local imageSize = self.props.imageSize
	local imageColor = self.props.imageColor
	local imageTransparency = self.props.imageTransparency
	local isSelected = self.props.isSelected
	local multiSelect = self.props.multiSelect
	local overlayComponents = self.props.overlayComponents
	local backgroundImage = self.props.backgroundImage
	local cornerRadius = self.props.cornerRadius
	local scaleType = self.props.scaleType

	local isImageSetImage = typeof(image) == "table"

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
		}, {
			ImageContainer = Roact.createElement("Frame", {
				BackgroundColor3 = theme.PlaceHolder.Color,
				BackgroundTransparency = theme.PlaceHolder.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 1),
				ZIndex = 0,
			}, {
				BackgroundImage = Roact.createElement(ImageSetComponent.Label, {
					Image = backgroundImage,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					Size = UDim2.fromScale(1, 1),
					ZIndex = 0,
				}, {
					ImageSetImage = isImageSetImage and Roact.createElement(ImageSetComponent.Label, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Image = image,
						ImageColor3 = imageColor or theme.UIEmphasis.Color,
						ImageTransparency = imageTransparency,
						Position = UDim2.fromScale(0.5, 0.5),
						Size = imageSize,
						ScaleType = scaleType,
					}, {
						UICorner = hasRoundedCorners and Roact.createElement("UICorner", {
							CornerRadius = cornerRadius,
						}) or nil,
					}) or Roact.createElement(LoadableImage, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = theme.PlaceHolder.Color,
						BackgroundTransparency = 1,
						Image = image,
						Position = UDim2.fromScale(0.5, 0.5),
						Size = imageSize,
						cornerRadius = hasRoundedCorners and cornerRadius or nil,
						showFailedStateWhenLoadingFailed = true,
						useShimmerAnimationWhileLoading = true,
						ScaleType = scaleType,
						onLoaded = self.props.onThumbnailLoaded,
					}),
					UICorner = hasRoundedCorners and Roact.createElement("UICorner", {
						CornerRadius = cornerRadius,
					}) or nil,
				}),

				UICorner = hasRoundedCorners and Roact.createElement("UICorner", {
					CornerRadius = cornerRadius,
				}) or nil,
			}),

			ComponentsFrame = overlayComponents and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 1,
			}, overlayComponents),

			SelectionOverlay = isSelected and Roact.createElement(TileSelectionOverlay, {
				ZIndex = 2,
				cornerRadius = hasRoundedCorners and cornerRadius or nil,
			}),

			UnselectedOverlay = (multiSelect and not isSelected) and Roact.createElement(TileUnselectedOverlay, {
				ZIndex = 2,
			}),
		})
	end)
end

return TileThumbnail
