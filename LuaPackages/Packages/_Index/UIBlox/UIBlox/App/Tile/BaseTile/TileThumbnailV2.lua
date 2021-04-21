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

local validateProps = t.strictInterface({
	-- Optional whether this component will have rounded corner or not
	hasRoundedCorners = t.optional(t.boolean),

	-- Optional the thumbnail image
	Image = t.optional(t.union(t.string, t.table)),

	-- Optional the thumbnail image size
	imageSize = t.optional(t.UDim2),

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
})

TileThumbnail.defaultProps = {
	imageSize = UDim2.fromScale(1, 1),
	imageTransparency = 0,
}

local CORNER_RADIUS = UDim.new(0, 10)

function TileThumbnail:render()
	assert(validateProps(self.props))

	local hasRoundedCorners = self.props.hasRoundedCorners
	local image = self.props.Image
	local imageSize = self.props.imageSize
	local imageTransparency = self.props.imageTransparency
	local isSelected = self.props.isSelected
	local multiSelect = self.props.multiSelect
	local overlayComponents = self.props.overlayComponents
	local backgroundImage = self.props.backgroundImage

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
					Image = isImageSetImage and Roact.createElement(ImageSetComponent.Label, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Image = image,
						ImageColor3 = theme.UIEmphasis.Color,
						ImageTransparency = imageTransparency,
						Position = UDim2.fromScale(0.5, 0.5),
						Size = imageSize,
					}, {
						UICorner = hasRoundedCorners and Roact.createElement("UICorner", {
								CornerRadius = CORNER_RADIUS,
							}) or nil,
					}) or Roact.createElement(LoadableImage, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = theme.PlaceHolder.Color,
						BackgroundTransparency = theme.PlaceHolder.Transparency,
						Image = image,
						Position = UDim2.fromScale(0.5, 0.5),
						Size = imageSize,
						cornerRadius = hasRoundedCorners and CORNER_RADIUS or nil,
						showFailedStateWhenLoadingFailed = true,
						useShimmerAnimationWhileLoading = true,
					}),

					UICorner = hasRoundedCorners and Roact.createElement("UICorner", {
							CornerRadius = CORNER_RADIUS,
						}) or nil,
				}),

				UICorner = hasRoundedCorners and Roact.createElement("UICorner", {
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

			UnselectedOverlay = (multiSelect and not isSelected) and Roact.createElement(TileUnselectedOverlay, {
				ZIndex = 2,
			}),
		})
	end)
end

return TileThumbnail
